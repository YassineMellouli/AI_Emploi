
# main.py
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import mysql.connector
import traceback
import os
import pandas as pd
from typing import Optional, Dict, Any

from generator import EmploiDuTempsGenerator, DAY_MAP

# -------------------------
# Config FastAPI + CORS
# -------------------------
app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# -------------------------
# Config DB
# -------------------------
DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "user": os.getenv("DB_USER", "root"),
    "password": os.getenv("DB_PASSWORD", ""),
    "database": os.getenv("DB_NAME", "emplois"),
}

db_connection: Optional[mysql.connector.MySQLConnection] = None
generator: Optional[EmploiDuTempsGenerator] = None

# -------------------------
# Modèles Pydantic
# -------------------------
class MoveCoursePayload(BaseModel):
    courseId: int
    oldDay: str
    oldPeriod: str  # ex: "08:00-10:00"
    oldClassroom: str
    newDay: str
    newPeriod: str  # ex: "10:00-12:00"
    newClassroom: str


# -------------------------
# Hooks de cycle de vie
# -------------------------
@app.on_event("startup")
def on_startup():
    global db_connection, generator
    try:
        db_connection = mysql.connector.connect(**DB_CONFIG)
    except Exception as e:
        print("❌ Connexion DB impossible:", e)
        db_connection = None

    if db_connection:
        generator = EmploiDuTempsGenerator(db_connection, establishment_id=7)
        generator.load_data()
        generator.initialize_constraints()
        # ne génère pas ici: on le fera à la 1re demande si besoin


@app.on_event("shutdown")
def on_shutdown():
    global db_connection
    if db_connection:
        try:
            db_connection.close()
        except Exception:
            pass


# -------------------------
# Utils de formatage frontend
# -------------------------
def format_timetable_for_frontend(gen: EmploiDuTempsGenerator, timetable=None) -> Dict[str, Dict[str, list]]:
    """
    Transforme le timetable en structure lisible par le frontend.
    """
    tt = timetable if timetable is not None else gen.timetable
    formatted: Dict[str, Dict[str, list]] = {}
    type_mapping = {1: "Cours", 2: "TD", 3: "TP"}
    
    # Create week type mapping
    week_type_mapping = {}
    if not gen.week_types.empty:
        for _, wt in gen.week_types.iterrows():
            week_type_id = int(wt["id"])
            designation = wt.get("designation", "")
            if week_type_id == 19:  # Hebdomadaire
                week_type_mapping[week_type_id] = "H"
            elif week_type_id == 20:  # Quinzaine
                week_type_mapping[week_type_id] = "Q"
            else:
                week_type_mapping[week_type_id] = designation[0] if designation else "?"

    for day_id, periods in tt.items():
        day_name = DAY_MAP.get(day_id, f"Jour {day_id}")
        formatted.setdefault(day_name, {})

        for period_id, classrooms in periods.items():
            period_label = gen.period_label(period_id)
            formatted[day_name].setdefault(period_label, [])

            for classroom_id, courses in classrooms.items():
                # Nom salle
                classroom_row = gen.classrooms.loc[gen.classrooms["id"] == classroom_id]
                classroom_name = (
                    classroom_row["designation"].iloc[0] if not classroom_row.empty else f"Salle {classroom_id}"
                )

                for course in courses:
                    # Professeur
                    t = gen.teachers.loc[gen.teachers["id"] == course["teacher_id"]]
                    teacher_name = (
                        f"{t['first_name'].iloc[0]} {t['last_name'].iloc[0]}"
                        if not t.empty else f"Enseignant {course['teacher_id']}"
                    )

                    # Matière
                    s = gen.subjects.loc[gen.subjects["id"] == course["subject_id"]]
                    subject_name = (
                        s["designation"].iloc[0] if not s.empty else f"Matière {course['subject_id']}"
                    )

                    # Get SINGLE group name based on subject type
                    group_name = ""
                    group_id = course.get("group_id")
                    subject_type = int(course.get("subject_type", 1))

                    if group_id:
                        try:
                            # Handle case where group_id might be stored as string list
                            if isinstance(group_id, str) and group_id.startswith('['):
                                import ast
                                group_list = ast.literal_eval(group_id)
                                group_id = group_list[0] if group_list else None
                            
                            group_id_int = int(group_id)
                            
                            if subject_type == 1:  # Cours -> sections
                                row_sec = gen.sections.loc[gen.sections["id"] == group_id_int]
                                if not row_sec.empty:
                                    group_name = row_sec["abbreviation"].iloc[0]
                            elif subject_type == 2:  # TD -> group_tds
                                row_td = gen.group_tds.loc[gen.group_tds["id"] == group_id_int]
                                if not row_td.empty:
                                    group_name = row_td["abbreviation"].iloc[0]
                            elif subject_type == 3:  # TP -> group_tps
                                row_tp = gen.group_tps.loc[gen.group_tps["id"] == group_id_int]
                                if not row_tp.empty:
                                    group_name = row_tp["abbreviation"].iloc[0]
                        except (ValueError, TypeError):
                            group_name = str(group_id)

                    # Get week type from regime
                    week_type_display = ""
                    regime_row = gen.regimes.loc[gen.regimes["id"] == course["id"]]
                    if not regime_row.empty:
                        week_type_id = regime_row["week_type_id"].iloc[0]
                        if week_type_id is not None and str(week_type_id) != 'nan' and str(week_type_id) != '':
                            try:
                                week_type_id = int(week_type_id)
                                week_type_display = week_type_mapping.get(week_type_id, "")
                            except (ValueError, TypeError):
                                week_type_display = ""

                    formatted[day_name][period_label].append(
                        {
                            "id": course["id"],
                            "subject": subject_name,
                            "teacher": teacher_name,
                            "group": [group_name] if group_name else [],  # Single group as array for compatibility
                            "classroom": classroom_name,
                            "type": type_mapping.get(int(course.get("subject_type", 1)), "Cours"),
                            "weekType": week_type_display,
                            "displayDuration": course.get("display_duration", course.get("duration", 1.5))
                        }
                    )

    return formatted





# -------------------------
# Endpoints
# -------------------------
@app.get("/")
def root():
    return {"message": "API Emploi du Temps - Déployé sur Render"}

@app.get("/timetable")
def get_timetable():
    """Retourne l'emploi du temps complet (tous niveaux)."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")

    try:
        if not any(generator.timetable.values()):
            generator.generate_timetable()

        return format_timetable_for_frontend(generator)
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/generate-timetable")
def generate_timetable():
    """Force la régénération du planning complet."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")

    try:
        generator.generate_timetable()
        return {
            "success": True,
            "message": "Emploi du temps généré avec succès",
            "timetable": format_timetable_for_frontend(generator),
        }
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e)) 


@app.get("/generation-stats")
def get_generation_stats():
    """Retourne des statistiques sur la génération."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    total_courses = len(generator.regimes) if not generator.regimes.empty else 0
    placed_courses = 0
    
    for day in generator.timetable.values():
        for period in day.values():
            for classroom in period.values():
                placed_courses += len(classroom)
    
    return {
        "total_courses": total_courses,
        "placed_courses": placed_courses,
        "placement_rate": f"{(placed_courses/total_courses*100):.1f}%" if total_courses > 0 else "0%",
        "valid_slots": len(generator._valid_slots_cache)
    }


@app.post("/validate-move")
def validate_move(payload: MoveCoursePayload):
    """Vérifie si un drag&drop serait valide (sans l'appliquer)."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")

    try:
        ok = generator.validate_course_move(
            course_id=payload.courseId,
            old_day=payload.oldDay,
            old_period=payload.oldPeriod,
            old_classroom=payload.oldClassroom,
            new_day=payload.newDay,
            new_period=payload.newPeriod,
            new_classroom=payload.newClassroom,
            timetable=generator.timetable,
        )
        return {"valid": bool(ok)}
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/move-course")
def move_course(payload: MoveCoursePayload):
    """
    Applique un drag&drop si valide, renvoie le planning mis à jour.
    """
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    print("🔍 DEBUG - Payload reçu:", payload.dict())
    
    try:
        # Validation étape par étape avec logging
        print("🔍 DEBUG - Validation du déplacement...")
        
        ok = generator.validate_course_move(
            course_id=payload.courseId,
            old_day=payload.oldDay,
            old_period=payload.oldPeriod,
            old_classroom=payload.oldClassroom,
            new_day=payload.newDay,
            new_period=payload.newPeriod,
            new_classroom=payload.newClassroom,
            timetable=generator.timetable,
        )
        
        print(f"🔍 DEBUG - Résultat validation: {ok}")
        
        if not ok:
            # Log détaillé des raisons possibles (version sécurisée)
            print("🔍 DEBUG - Raisons possibles du rejet:")
            
            # Vérifications sécurisées
            try:
                wed_afternoon = generator._is_wednesday_afternoon(payload.newDay, payload.newPeriod)
                print(f"  - Mercredi après-midi?: {wed_afternoon}")
            except Exception as e:
                print(f"  - Mercredi après-midi?: Erreur - {e}")
            
            try:
                teacher_reason = generator._check_teacher_unavailable(payload)
                print(f"  - Enseignant indisponible?: {teacher_reason}")
            except Exception as e:
                print(f"  - Enseignant indisponible?: Erreur - {e}")
                teacher_reason = "Erreur de vérification"
            
            try:
                group_busy = generator._check_group_busy(payload)
                print(f"  - Groupe occupé?: {group_busy}")
            except Exception as e:
                print(f"  - Groupe occupé?: Erreur - {e}")
            
            try:
                establishment_closed = generator._check_establishment_closed(payload)
                print(f"  - Établissement fermé?: {establishment_closed}")
            except Exception as e:
                print(f"  - Établissement fermé?: Erreur - {e}")
            
            raise HTTPException(status_code=400, detail=f"Déplacement invalide: {teacher_reason}")

        print("🔍 DEBUG - Application du déplacement...")
        done = generator.apply_course_move(
            course_id=payload.courseId,
            old_day=payload.oldDay,
            old_period=payload.oldPeriod,
            old_classroom=payload.oldClassroom,
            new_day=payload.newDay,
            new_period=payload.newPeriod,
            new_classroom=payload.newClassroom,
            timetable=generator.timetable,
        )
        
        print(f"🔍 DEBUG - Résultat application: {done}")
        
        if not done:
            raise HTTPException(status_code=400, detail="Impossible d'appliquer le déplacement.")

        return {
            "success": True,
            "message": "Cours déplacé avec succès",
            "timetable": format_timetable_for_frontend(generator),
        }
    except HTTPException:
        raise
    except Exception as e:
        print("🔍 DEBUG - Erreur inattendue:", traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))


# -------------------------
# Nouveaux endpoints pour le filtrage
# -------------------------

@app.get("/levels")
def get_available_levels():
    """Retourne la liste des niveaux disponibles."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        levels = generator.get_levels_available()
        return {
            "levels": levels,
            "all_levels": ["all"] + levels  # Inclut l'option "Tous"
        }
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

@app.get("/timetable/{level}")
def get_timetable_by_level(level: str):
    """
    Retourne l'emploi du temps filtré par niveau.
    level peut être: "all", "L1", "L2", "L3"
    """
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        # Générer si vide
        if not any(generator.timetable.values()):
            generator.generate_timetable()
        
        # Filtrer par niveau
        filtered_timetable = generator.filter_timetable_by_level(level)
        
        return format_timetable_for_frontend(generator, filtered_timetable)
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

@app.post("/generate-timetable/{level}")
def generate_timetable_by_level(level: str):
    """Génère et retourne l'emploi du temps filtré par niveau."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        generator.generate_timetable()
        filtered_timetable = generator.filter_timetable_by_level(level)
        
        return {
            "success": True,
            "message": f"Emploi du temps généré avec succès (niveau {level})",
            "timetable": format_timetable_for_frontend(generator, filtered_timetable),
        }
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

@app.get("/levels/{level}/groups")
def get_groups_by_level(level: str):
    """Retourne la liste des groupes pour un niveau donné."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        groups = generator.get_groups_by_level(level)
        return {
            "level": level,
            "groups": groups,
            "all_groups": [{"id": "all", "name": "Tous les groupes", "type": "ALL", "full_name": "Tous les groupes"}] + groups
        }
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

@app.get("/timetable/{level}/{group_id}")
def get_timetable_by_level_and_group(level: str, group_id: str):
    """
    Retourne l'emploi du temps filtré par niveau et groupe.
    """
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        # Générer si vide
        if not any(generator.timetable.values()):
            generator.generate_timetable()
        
        # Filtrer par niveau d'abord
        level_filtered = generator.filter_timetable_by_level(level)
        
        # Puis filtrer par groupe
        group_filtered = generator.filter_timetable_by_group(group_id, level_filtered)
        
        return format_timetable_for_frontend(generator, group_filtered)
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

@app.post("/generate-timetable/{level}/{group_id}")
def generate_timetable_by_level_and_group(level: str, group_id: str):
    """Génère et retourne l'emploi du temps filtré par niveau et groupe."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        generator.generate_timetable()
        
        # Filtrer par niveau d'abord
        level_filtered = generator.filter_timetable_by_level(level)
        
        # Puis filtrer par groupe
        group_filtered = generator.filter_timetable_by_group(group_id, level_filtered)
        
        return {
            "success": True,
            "message": f"Emploi du temps généré avec succès (niveau {level}, groupe {group_id})",
            "timetable": format_timetable_for_frontend(generator, group_filtered),
        }
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))        

@app.get("/unplaced-courses")
def get_unplaced_courses():
    """Retourne la liste des cours non placés avec la raison."""
    global generator
    if generator is None:
        raise HTTPException(status_code=500, detail="Générateur non initialisé")
    
    try:
        # Récupérer tous les cours du régime
        all_courses = generator._prioritize_courses()
        placed_courses = set()
        
        # Identifier les cours placés
        for day_id, periods in generator.timetable.items():
            for period_id, classrooms in periods.items():
                for classroom_id, courses in classrooms.items():
                    for course in courses:
                        placed_courses.add(course["id"])
        
        # Trouver les cours non placés
        unplaced = []
        for course in all_courses:
            if course["id"] not in placed_courses:
                # Tester pourquoi le cours n'a pas pu être placé
                reason = generator._debug_course_placement(course)
                unplaced.append({
                    "course_id": course["id"],
                    "subject_id": course["subject_id"],
                    "teacher_id": course["teacher_id"],
                    "groups": course.get("group_id"),
                    "duration": course.get("duration"),
                    "reason": reason
                })
        
        return {
            "total_courses": len(all_courses),
            "placed_courses": len(placed_courses),
            "unplaced_courses": len(unplaced),
            "unplaced_details": unplaced
        }
        
    except Exception as e:
        print(traceback.format_exc())
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    port = int(os.getenv("PORT", 8000))
    uvicorn.run(app, host="0.0.0.0", port=port)