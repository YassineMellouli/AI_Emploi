# generator.py (version optimisée)
import pandas as pd
import numpy as np
from collections import defaultdict
from typing import Optional, Tuple, Dict, Any, List
import random
from datetime import time
import time as time_module

DAY_MAP = {
    1: "Lundi",
    2: "Mardi", 
    3: "Mercredi",
    4: "Jeudi",
    5: "Vendredi",
    6: "Samedi",
    7: "Dimanche"
}
DAY_NAME_TO_ID = {v: k for k, v in DAY_MAP.items()}


class EmploiDuTempsGenerator:
    def __init__(self, db_connection, establishment_id: int = 7):
        self.busy_groups = defaultdict(set)
        self.busy_teachers = defaultdict(set)
        self.db = db_connection
        self.establishment_id = establishment_id
        self.constraints: Dict[str, Any] = {}
        self.available_days = [1, 2, 3, 4, 5]
        self.unavailable_slots: List[Tuple[int, int]] = []

        # Planning avec structures optimisées
        self.timetable: Dict[int, Dict[int, Dict[int, list]]] = defaultdict(
            lambda: defaultdict(lambda: defaultdict(list))
        )

        # DataFrames
        self.periods = pd.DataFrame()
        self.days = pd.DataFrame()
        self.classrooms = pd.DataFrame()
        self.teachers = pd.DataFrame()
        self.subjects = pd.DataFrame()
        self.sections = pd.DataFrame()
        self.regimes = pd.DataFrame()
        self.group_tds = pd.DataFrame()
        self.group_tps = pd.DataFrame()
        self.not_available_teachers = pd.DataFrame()
        self.not_available_establishments = pd.DataFrame()

        # Cache pour les recherches
        self._period_cache: Dict[str, int] = {}
        self._classroom_cache: Dict[str, int] = {}
        self._valid_slots_cache: List[Tuple[int, int, int]] = []

    def load_data(self):
        """Charger toutes les données avec optimisation."""
        est = int(self.establishment_id)
        
        # Chargement parallélisé des données principales
        queries = {
            'periods': f"SELECT * FROM periods WHERE establishment_id = {est}",
            'days': "SELECT * FROM days",
            'classrooms': f"SELECT * FROM classrooms WHERE establishment_id = {est}",
            'teachers': f"SELECT * FROM teachers WHERE establishment_id = {est}",
            'subjects': f"SELECT * FROM subjects WHERE establishment_id = {est}",
            'sections': f"SELECT * FROM sections WHERE establishment_id = {est}",
            'regimes': "SELECT * FROM regimes",
            'group_tds': f"SELECT * FROM group_tds WHERE establishment_id = {est}",
            'group_tps': f"SELECT * FROM group_tps WHERE establishment_id = {est}",
            'not_available_teachers': f"SELECT * FROM not_available_teachers WHERE establishment_id = {est}",
            'not_available_establishments': f"SELECT * FROM not_available_establishments WHERE establishment_id = {est}",
            'week_types': "SELECT * FROM week_types"
        }
        
        for attr, query in queries.items():
            setattr(self, attr, pd.read_sql(query, self.db))

        # Pré-calcul des créneaux indisponibles
        self.unavailable_slots.clear()
        mercredi_id = 3
        for _, p in self.periods.iterrows():
            start_min = self._to_minutes(p["start_hour"])
            if start_min >= 12 * 60:
                self.unavailable_slots.append((mercredi_id, int(p["id"])))

        # Pré-calcul du cache
        self._build_caches()

    def _build_caches(self):
        """Construit les caches pour les recherches rapides."""
        # Cache des périodes
        self._period_cache.clear()
        for _, p in self.periods.iterrows():
            label = f"{self._fmt_hhmm(p['start_hour'])}-{self._fmt_hhmm(p['end_hour'])}"
            self._period_cache[label] = int(p["id"])
        
        # Cache des salles
        self._classroom_cache.clear()
        for _, c in self.classrooms.iterrows():
            self._classroom_cache[c["designation"]] = int(c["id"])
        
        # Pré-calcul des créneaux valides
        self._precompute_valid_slots()

    def _precompute_valid_slots(self):
        """Pré-calcule tous les créneaux valides une fois pour toutes."""
        self._valid_slots_cache.clear()
        
        periods_list = self.periods.to_dict('records')
        classrooms_list = self.classrooms.to_dict('records')
        
        for d in self.days.to_dict('records'):
            day_id = int(d['id'])
            if day_id in (6, 7):  # Ignorer weekend
                continue
                
            for p in periods_list:
                period_id = int(p['id'])
                
                # Vérifier si le créneau est disponible
                if (day_id, period_id) in self.unavailable_slots:
                    continue
                    
                start_min = self._to_minutes(p['start_hour'])
                end_min = self._to_minutes(p['end_hour'])
                
                # Filtrer par plages horaires autorisées
                morning_ok = 8*60 <= start_min <= 12*60+30 and end_min <= 12*60+30
                afternoon_ok = 14*60 <= start_min <= 17*60 and end_min <= 17*60
                if not (morning_ok or afternoon_ok):
                    continue
                
                for c in classrooms_list:
                    self._valid_slots_cache.append((day_id, period_id, int(c['id'])))

    def initialize_constraints(self):
        """Initialiser les contraintes avec optimisation."""
        # Enseignants indisponibles
        teacher_constraints = {}
        for _, row in self.not_available_teachers.iterrows():
            tid = int(row["teacher_id"])
            slot = (int(row["day_id"]), int(row["period_id"]))
            if tid not in teacher_constraints:
                teacher_constraints[tid] = set()
            teacher_constraints[tid].add(slot)
        self.constraints["teachers"] = teacher_constraints

        # Établissement
        establishment_constraints = defaultdict(set)
        for _, row in self.not_available_establishments.iterrows():
            slot = (int(row["day_id"]), int(row["period_id"]))
            establishment_constraints[slot].add(row["type"])
        self.constraints["establishment"] = establishment_constraints

        # Salles
        classroom_capacity = {}
        for _, row in self.classrooms.iterrows():
            classroom_capacity[int(row["id"])] = {
                "capacity": row.get("capacity"),
                "type": row.get("subject_type"),
                "block_id": row.get("block_id"),
            }
        self.constraints["classrooms"] = classroom_capacity

    def generate_timetable(self, max_iterations: int = 5000):
        """Génère l'emploi du temps de manière optimisée."""
        start_time = time_module.time()
        
        # Réinitialiser
        self.timetable = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
        self.busy_groups.clear()
        self.busy_teachers.clear()

        # Obtenir les cours prioritaires
        prioritized_courses = self._prioritize_courses()
        print(f"🔄 Génération de {len(prioritized_courses)} cours...")

        # Copie des créneaux valides pour manipulation
        available_slots = self._valid_slots_cache.copy()
        random.shuffle(available_slots)  # Mélanger une seule fois

        placed_count = 0
        for course_idx, course in enumerate(prioritized_courses):
            placed = False
            tries = 0
            
            # Essayer de placer le cours
            while not placed and tries < len(available_slots) and tries < max_iterations:
                slot_idx = (course_idx + tries) % len(available_slots)
                day_id, period_id, classroom_id = available_slots[slot_idx]
                
                # Vérifications rapides
                if (len(self.timetable[day_id][period_id][classroom_id]) > 0 or
                    not self._check_all_constraints_fast(course, day_id, period_id, classroom_id)):
                    tries += 1
                    continue
                
                # Placer le cours
                self.timetable[day_id][period_id][classroom_id].append(course)
                self._update_busy_cache(course, day_id, period_id)
                placed = True
                placed_count += 1
                
                if placed_count % 50 == 0:
                    print(f"✅ {placed_count}/{len(prioritized_courses)} cours placés")
                
            if not placed:
                print(f"⚠️ Cours {course['id']} non placé après {tries} tentatives")

        elapsed = time_module.time() - start_time
        print(f"🎉 Génération terminée: {placed_count}/{len(prioritized_courses)} cours en {elapsed:.2f}s")
        return self.timetable

    def _check_all_constraints_fast(self, course, day_id, period_id, classroom_id) -> bool:
        """Version optimisée de la vérification des contraintes."""
        # Enseignant indisponible
        teacher_id = int(course["teacher_id"])
        if (teacher_id in self.constraints.get("teachers", {}) and 
            (day_id, period_id) in self.constraints["teachers"][teacher_id]):
            return False

        # Établissement fermé
        if "closed" in self.constraints.get("establishment", {}).get((day_id, period_id), set()):
            return False

        # Enseignant déjà occupé
        if (day_id, period_id) in self.busy_teachers.get(teacher_id, set()):
            return False

        # Groupe déjà occupé
        groups = self._parse_group_ids(course.get("group_id"))
        if any(g in self.busy_groups.get((day_id, period_id), set()) for g in groups):
            return False

        return True

    def _update_busy_cache(self, course, day_id, period_id):
        """Met à jour les caches d'occupation."""
        teacher_id = int(course["teacher_id"])
        if teacher_id not in self.busy_teachers:
            self.busy_teachers[teacher_id] = set()
        self.busy_teachers[teacher_id].add((day_id, period_id))
        
        groups = self._parse_group_ids(course.get("group_id"))
        for group in groups:
            self.busy_groups[(day_id, period_id)].add(group)

    def _prioritize_courses(self) -> List[Dict[str, Any]]:
        """Classe les cours par difficulté de placement."""
        courses = []
        if self.regimes.empty:
            return courses

        for _, r in self.regimes.iterrows():
            # Get the single group ID (not a list)
            group_id = r.get("group_id")
            if group_id and isinstance(group_id, str) and group_id.startswith('['):
                try:
                    import ast
                    group_list = ast.literal_eval(group_id)
                    group_id = group_list[0] if group_list else None
                except:
                    pass
            
            course = {
                "id": int(r["id"]),
                "subject_id": int(r["subject_id"]),
                "teacher_id": int(r["teacher_id"]),
                "subject_type": int(r.get("subject_type_id", r.get("subject_type", 1))),
                "duration": float(r.get("nb_hours", 1.5)),
                "group_id": group_id,  # Single group ID, not a list
                "required_equipment": r.get("equipments", ""),
            }
            course["priority"] = self._calculate_priority(course)
            courses.append(course)

        return sorted(courses, key=lambda c: c.get("priority", 0), reverse=True)

    def _calculate_priority(self, course: Dict[str, Any]) -> int:
        priority = 0
        if course.get("required_equipment") and str(course["required_equipment"]).upper() != "NULL":
            priority += 20
        if course.get("duration", 0) > 1.5:
            priority += 15
        t_id = int(course["teacher_id"])
        if t_id in self.constraints.get("teachers", {}):
            priority += 2 * len(self.constraints["teachers"][t_id])
        return priority

    def _parse_group_ids(self, group_data):
        """Parse les groupes - maintenant un seul groupe par cours."""
        if not group_data:
            return []
        
        # If it's a list, take only the first element
        if isinstance(group_data, list):
            return [str(group_data[0]).strip()] if group_data else []
        
        # If it's a string that looks like a list, parse and take first
        if isinstance(group_data, str) and group_data.startswith('['):
            try:
                import ast
                parsed = ast.literal_eval(group_data)
                if isinstance(parsed, list) and parsed:
                    return [str(parsed[0]).strip()]
            except:
                pass
        
        # Single group
        return [str(group_data).strip()]

    # Méthodes pour le drag & drop (inchangées mais optimisées)
    def validate_course_move(self, course_id, old_day, old_period, old_classroom, 
                           new_day, new_period, new_classroom, timetable=None):
        tt = timetable if timetable is not None else self.timetable

        old_day_id = DAY_NAME_TO_ID.get(old_day)
        new_day_id = DAY_NAME_TO_ID.get(new_day)
        if not old_day_id or not new_day_id:
            return False

        # Utilisation du cache pour les recherches
        old_period_id = self._period_cache.get(old_period)
        new_period_id = self._period_cache.get(new_period)
        old_classroom_id = self._classroom_cache.get(old_classroom)
        new_classroom_id = self._classroom_cache.get(new_classroom)
        
        if not all([old_period_id, new_period_id, old_classroom_id, new_classroom_id]):
            return False

        # Trouver le cours
        course = None
        for c in tt[old_day_id][old_period_id][old_classroom_id]:
            if int(c["id"]) == int(course_id):
                course = c
                break
        if not course:
            return False

        # Vérifications
        if (new_day_id, new_period_id) in self.unavailable_slots:
            return False
        
        return self._check_all_constraints_fast(course, new_day_id, new_period_id, new_classroom_id)

    def apply_course_move(self, course_id, old_day, old_period, old_classroom,
                         new_day, new_period, new_classroom, timetable=None):
        tt = timetable if timetable is not None else self.timetable

        old_day_id = DAY_NAME_TO_ID.get(old_day)
        new_day_id = DAY_NAME_TO_ID.get(new_day)
        old_period_id = self._period_cache.get(old_period)
        new_period_id = self._period_cache.get(new_period)
        old_classroom_id = self._classroom_cache.get(old_classroom)
        new_classroom_id = self._classroom_cache.get(new_classroom)

        if not all([old_day_id, new_day_id, old_period_id, new_period_id, 
                   old_classroom_id, new_classroom_id]):
            return False

        # Retirer l'ancien cours
        course = None
        bucket = tt[old_day_id][old_period_id][old_classroom_id]
        for i, c in enumerate(bucket):
            if int(c["id"]) == int(course_id):
                course = bucket.pop(i)
                break
        if not course:
            return False

        # Nettoyer le cache
        self._remove_from_busy_cache(course, old_day_id, old_period_id)

        # Ajouter le nouveau cours
        tt[new_day_id][new_period_id][new_classroom_id].append(course)
        self._update_busy_cache(course, new_day_id, new_period_id)
        return True

    def _remove_from_busy_cache(self, course, day_id, period_id):
        """Retire un cours des caches d'occupation."""
        teacher_id = int(course["teacher_id"])
        if teacher_id in self.busy_teachers:
            self.busy_teachers[teacher_id].discard((day_id, period_id))
        
        groups = self._parse_group_ids(course.get("group_id"))
        for group in groups:
            self.busy_groups[(day_id, period_id)].discard(group)

    def find_period_id(self, period_name: str) -> Optional[int]:
        """Utilise le cache pour une recherche rapide."""
        return self._period_cache.get(period_name.strip())

    def find_classroom_id(self, classroom_name: str) -> Optional[int]:
        """Utilise le cache pour une recherche rapide."""
        return self._classroom_cache.get(classroom_name.strip())

    def period_label(self, period_id: int) -> str:
        """Trouve le libellé depuis le cache inversé."""
        for label, pid in self._period_cache.items():
            if pid == period_id:
                return label
        return f"Periode {period_id}"

    # Méthodes utilitaires inchangées
    def _to_minutes(self, value) -> int:
        if pd.isna(value):
            return 0
        if isinstance(value, pd.Timedelta):
            return int(value.total_seconds() // 60)
        if isinstance(value, np.timedelta64):
            return int(value / np.timedelta64(1, "m"))
        if isinstance(value, time):
            return int(value.hour) * 60 + int(value.minute)
        if isinstance(value, str):
            parts = value.split(":")
            h = int(parts[0])
            m = int(parts[1]) if len(parts) > 1 else 0
            return h * 60 + m
        if isinstance(value, (int, float)):
            return int(value)
        try:
            return int(pd.to_timedelta(value).total_seconds() // 60)
        except Exception:
            return 0

    def _fmt_hhmm(self, value) -> str:
        mins = self._to_minutes(value)
        h = mins // 60
        m = mins % 60
        return f"{int(h):02d}:{int(m):02d}"

    def get_levels_available(self) -> List[str]:
        """Retourne la liste des niveaux disponibles (L1, L2, L3)."""
        levels = set()
        
        # Chercher les niveaux dans les sections
        if not self.sections.empty:
            for _, section in self.sections.iterrows():
                abbreviation = section.get('abbreviation', '')
                if isinstance(abbreviation, str) and abbreviation.startswith('L'):
                    level = abbreviation[:2]  # L1, L2, L3
                    levels.add(level)
        
        # Chercher dans les groupes TD/TP
        for df in [self.group_tds, self.group_tps]:
            if not df.empty:
                for _, group in df.iterrows():
                    abbreviation = group.get('abbreviation', '')
                    if isinstance(abbreviation, str) and abbreviation.startswith('L'):
                        level = abbreviation[:2]
                        levels.add(level)
        
        return sorted(list(levels))

    def filter_timetable_by_level(self, level: str, timetable=None) -> Dict[int, Dict[int, Dict[int, list]]]:
        """
        Filtre l'emploi du temps pour n'afficher que les cours d'un niveau spécifique.
        
        Args:
            level: "L1", "L2", "L3" ou "all" pour tout afficher
            timetable: Le planning à filtrer (par défaut self.timetable)
        
        Returns:
            Un nouveau timetable filtré
        """
        tt = timetable if timetable is not None else self.timetable
        filtered_timetable = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
        
        if level == "all":
            return tt
        
        for day_id, periods in tt.items():
            for period_id, classrooms in periods.items():
                for classroom_id, courses in classrooms.items():
                    for course in courses:
                        if self._course_belongs_to_level(course, level):
                            filtered_timetable[day_id][period_id][classroom_id].append(course)
        
        return filtered_timetable

    def _course_belongs_to_level(self, course: Dict[str, Any], level: str) -> bool:
        """Vérifie si un cours appartient à un niveau donné."""
        group_data = course.get("group_id")
        if not group_data:
            return False
        
        # Parser les groupes
        group_ids = self._parse_group_ids(group_data)
        subject_type = int(course.get("subject_type", 1))
        
        for group_id in group_ids:
            try:
                group_id_int = int(group_id)
                
                if subject_type == 1:  # Cours -> sections
                    section_row = self.sections.loc[self.sections["id"] == group_id_int]
                    if not section_row.empty:
                        abbrev = section_row["abbreviation"].iloc[0]
                        if isinstance(abbrev, str) and abbrev.startswith(level):
                            return True
                
                elif subject_type == 2:  # TD -> group_tds
                    td_row = self.group_tds.loc[self.group_tds["id"] == group_id_int]
                    if not td_row.empty:
                        abbrev = td_row["abbreviation"].iloc[0]
                        if isinstance(abbrev, str) and abbrev.startswith(level):
                            return True
                
                elif subject_type == 3:  # TP -> group_tps
                    tp_row = self.group_tps.loc[self.group_tps["id"] == group_id_int]
                    if not tp_row.empty:
                        abbrev = tp_row["abbreviation"].iloc[0]
                        if isinstance(abbrev, str) and abbrev.startswith(level):
                            return True
            
            except (ValueError, TypeError):
                # Si group_id n'est pas un nombre, vérifier directement la chaîne
                if isinstance(group_id, str) and group_id.startswith(level):
                    return True
        
        return False

    def _is_wednesday_afternoon(self, day_name: str, period_label: str) -> bool:
        """Vérifie si c'est le mercredi après-midi."""
        day_id = DAY_NAME_TO_ID.get(day_name)
        period_id = self.find_period_id(period_label)
        return (day_id, period_id) in self.unavailable_slots

    def _is_teacher_busy(self, teacher_id, day_id, period_id, timetable) -> bool:
        """Vérifie si un enseignant est déjà occupé à un créneau donné."""
        for classroom_id, courses in timetable[day_id][period_id].items():
            for course in courses:
                if int(course["teacher_id"]) == int(teacher_id):
                    return True
        return False

    def _check_teacher_unavailable(self, payload) -> str:
        """Vérifie si l'enseignant est indisponible et retourne la raison."""
        course = None
        old_day_id = DAY_NAME_TO_ID.get(payload.oldDay)
        old_period_id = self.find_period_id(payload.oldPeriod)
        old_classroom_id = self.find_classroom_id(payload.oldClassroom)
        
        if old_day_id and old_period_id and old_classroom_id:
            for c in self.timetable[old_day_id][old_period_id][old_classroom_id]:
                if int(c["id"]) == int(payload.courseId):
                    course = c
                    break
        
        if not course:
            return "Cours non trouvé"
        
        teacher_id = int(course["teacher_id"])
        new_day_id = DAY_NAME_TO_ID.get(payload.newDay)
        new_period_id = self.find_period_id(payload.newPeriod)
        
        if not new_day_id or not new_period_id:
            return "Créneau invalide"
        
        # Vérifier contraintes enseignant prédéfinies
        if teacher_id in self.constraints.get("teachers", {}):
            if (new_day_id, new_period_id) in self.constraints["teachers"][teacher_id]:
                return f"Enseignant {teacher_id} a une indisponibilité programmée"
        
        # Vérifier si l'enseignant est déjà occupé à ce créneau
        if self._is_teacher_busy(teacher_id, new_day_id, new_period_id, self.timetable):
            return f"Enseignant {teacher_id} a déjà un cours à ce créneau"
        
        return "Non"

    def _check_group_busy(self, payload) -> bool:
        """Vérifie si les groupes sont occupés."""
        course = None
        old_day_id = DAY_NAME_TO_ID.get(payload.oldDay)
        old_period_id = self.find_period_id(payload.oldPeriod)
        old_classroom_id = self.find_classroom_id(payload.oldClassroom)
        
        if old_day_id and old_period_id and old_classroom_id:
            for c in self.timetable[old_day_id][old_period_id][old_classroom_id]:
                if int(c["id"]) == int(payload.courseId):
                    course = c
                    break
        
        if not course:
            return False
        
        new_day_id = DAY_NAME_TO_ID.get(payload.newDay)
        new_period_id = self.find_period_id(payload.newPeriod)
        
        if not new_day_id or not new_period_id:
            return False
        
        groups = set(self._parse_group_ids(course.get("group_id")))  # Convertir en set
        busy_groups_set = self.busy_groups.get((new_day_id, new_period_id), set())
        
        return bool(groups & busy_groups_set)

    def _check_establishment_closed(self, payload) -> bool:
        """Vérifie si l'établissement est fermé."""
        new_day_id = DAY_NAME_TO_ID.get(payload.newDay)
        new_period_id = self.find_period_id(payload.newPeriod)
        
        if not new_day_id or not new_period_id:
            return False
        
        est_cons = self.constraints.get("establishment", {}).get((new_day_id, new_period_id), set())
        return "closed" in est_cons

    def get_groups_by_level(self, level: str) -> List[Dict[str, Any]]:
        """Retourne la liste des groupes pour un niveau donné."""
        groups = []
        
        # Groupes de TD
        if not self.group_tds.empty:
            for _, group in self.group_tds.iterrows():
                abbrev = group.get('abbreviation', '')
                if isinstance(abbrev, str) and abbrev.startswith(level):
                    groups.append({
                        "id": f"TD_{group['id']}",
                        "name": abbrev,
                        "type": "TD",
                        "full_name": f"TD {abbrev}"
                    })
        
        # Groupes de TP
        if not self.group_tps.empty:
            for _, group in self.group_tps.iterrows():
                abbrev = group.get('abbreviation', '')
                if isinstance(abbrev, str) and abbrev.startswith(level):
                    groups.append({
                        "id": f"TP_{group['id']}",
                        "name": abbrev,
                        "type": "TP",
                        "full_name": f"TP {abbrev}"
                    })
        
        # Sections (pour les cours)
        if not self.sections.empty:
            for _, section in self.sections.iterrows():
                abbrev = section.get('abbreviation', '')
                if isinstance(abbrev, str) and abbrev.startswith(level):
                    groups.append({
                        "id": f"COURS_{section['id']}",
                        "name": abbrev,
                        "type": "COURS",
                        "full_name": f"Cours {abbrev}"
                    })
        
        return sorted(groups, key=lambda x: x["name"])

    def filter_timetable_by_group(self, group_id: str, timetable=None) -> Dict[int, Dict[int, Dict[int, list]]]:
        """
        Filtre l'emploi du temps pour n'afficher que les cours d'un groupe spécifique.
        
        Args:
            group_id: ID du groupe (ex: "TD_123", "TP_456", "COURS_789")
            timetable: Le planning à filtrer
        
        Returns:
            Un nouveau timetable filtré
        """
        tt = timetable if timetable is not None else self.timetable
        filtered_timetable = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
        
        if group_id == "all":
            return tt
        
        # Extraire le type et l'ID réel du groupe
        group_type, real_id = group_id.split("_", 1)
        real_id = int(real_id)
        
        for day_id, periods in tt.items():
            for period_id, classrooms in periods.items():
                for classroom_id, courses in classrooms.items():
                    for course in courses:
                        if self._course_belongs_to_group(course, group_type, real_id):
                            filtered_timetable[day_id][period_id][classroom_id].append(course)
        
        return filtered_timetable

    def _course_belongs_to_group(self, course: Dict[str, Any], group_type: str, group_id: int) -> bool:
        """Vérifie si un cours appartient à un groupe spécifique."""
        course_group_data = course.get("group_id")
        if not course_group_data:
            return False
        
        # Parser le groupe du cours
        course_groups = self._parse_group_ids(course_group_data)
        course_subject_type = int(course.get("subject_type", 1))
        
        for course_group in course_groups:
            try:
                course_group_id = int(course_group)
                
                # Vérifier la correspondance selon le type
                if group_type == "COURS" and course_subject_type == 1:
                    # Cours -> sections
                    return course_group_id == group_id
                elif group_type == "TD" and course_subject_type == 2:
                    # TD -> group_tds
                    return course_group_id == group_id
                elif group_type == "TP" and course_subject_type == 3:
                    # TP -> group_tps
                    return course_group_id == group_id
                    
            except (ValueError, TypeError):
                continue
        
        return False

    def _debug_course_placement(self, course) -> str:
        """Debug pourquoi un cours ne peut pas être placé."""
        reasons = []
        
        # Tester sur tous les créneaux valides
        tested_slots = 0
        possible_slots = 0
        
        for day_id, period_id, classroom_id in self._valid_slots_cache:
            tested_slots += 1
            if self._check_all_constraints_fast(course, day_id, period_id, classroom_id):
                possible_slots += 1
        
        reasons.append(f"Créneaux testés: {tested_slots}, possibles: {possible_slots}")
        
        # Vérifier les contraintes enseignants
        teacher_id = int(course["teacher_id"])
        if teacher_id in self.constraints.get("teachers", {}):
            unavailable_count = len(self.constraints["teachers"][teacher_id])
            reasons.append(f"Enseignant a {unavailable_count} créneaux indisponibles")
        
        # Vérifier la durée
        if course.get("duration", 0) > 1.5:
            reasons.append(f"Durée longue: {course['duration']}h")
        
        # Vérifier les équipements
        if course.get("required_equipment") and str(course["required_equipment"]).upper() != "NULL":
            reasons.append("Équipement spécial requis")
        
        return " | ".join(reasons)


    def _place_short_course(self, course, available_slots):
        """Place un cours de durée inférieure à 1.5h."""
        duration = course.get("duration", 1.5)
        
        # Pour les cours de 0.75h, on peut les placer dans un créneau normal
        # mais il faudrait idéalement avoir des créneaux de 45min
        # Pour l'instant, on les traite comme des cours normaux
        if duration < 1.5:
            print(f"📏 Cours court {course['id']} ({duration}h) - traitement comme 1.5h")
            # On considère quand même la durée réelle pour le placement
            course["original_duration"] = duration
        
        # Placement normal
        for slot_idx in range(len(available_slots)):
            day_id, period_id, classroom_id = available_slots[slot_idx]
            
            if (len(self.timetable[day_id][period_id][classroom_id]) == 0 and
                self._check_all_constraints_fast(course, day_id, period_id, classroom_id)):
                
                self.timetable[day_id][period_id][classroom_id].append(course)
                self._update_busy_cache(course, day_id, period_id)
                return True
        
        return False

    def _adjust_course_durations(self, courses):
        """Ajuste les durées des cours pour le placement mais garde la durée originale pour l'affichage."""
        adjusted_courses = []
        for course in courses:
            adjusted_course = course.copy()
            duration = course.get("duration", 1.5)
            
            # Si durée < 1.5h, on la traite comme 1.5h pour le placement mais garde l'originale
            if duration < 1.5:
                adjusted_course["original_duration"] = duration  # Garde la durée réelle
                adjusted_course["display_duration"] = duration   # Pour l'affichage
                adjusted_course["duration"] = 1.5               # Pour le placement
                print(f"🕒 Cours {course['id']}: durée ajustée de {duration}h à 1.5h pour placement")
            elif duration > 1.5:
                adjusted_course["display_duration"] = duration   # Pour l'affichage des cours longs
            
            adjusted_courses.append(adjusted_course)
        
        return adjusted_courses