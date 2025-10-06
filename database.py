import mysql.connector
import pandas as pd
import os
# ⚠️ SUPPRIMEZ from dotenv import load_dotenv

class DatabaseManager:
    def __init__(self):
        # ⚠️ SUPPRIMEZ load_dotenv() - Pas besoin sur Render
        self.config = {
            'host': os.getenv('DB_HOST', 'localhost'),
            'user': os.getenv('DB_USER', 'root'),
            'password': os.getenv('DB_PASSWORD', ''),
            'database': os.getenv('DB_NAME', 'emplois'),
            'port': int(os.getenv('DB_PORT', 3306)),  # ⚠️ AJOUTEZ int()
            'auth_plugin': 'mysql_native_password'
        }
    
    def connect(self):
        """Établir la connexion à MySQL"""
        try:
            conn = mysql.connector.connect(**self.config)
            print("✅ Connexion MySQL établie")
            return conn
        except mysql.connector.Error as err:
            print(f"❌ Erreur MySQL: {err}")
            return None
    
    def test_connection(self):
        """Tester la connexion et afficher les tables"""
        conn = self.connect()
        if conn:
            try:
                # Afficher les tables disponibles
                tables = pd.read_sql("SHOW TABLES", conn)
                print("📋 Tables disponibles:")
                for table in tables.iloc[:, 0]:
                    print(f"   - {table}")
                
                return True
            except Exception as e:
                print(f"❌ Erreur: {e}")
                return False
            finally:
                conn.close()
        return False

# ⚠️ SUPPRIMEZ le test de connexion au bas du fichier
# if __name__ == "__main__":
#     db = DatabaseManager()
#     db.test_connection()