# MySQLServer.py

import mysql.connector
from mysql.connector import errorcode

def main():
    try:
        # 1) Connect to MySQL server (adjust host/user/password as needed)
        conn = mysql.connector.connect(
            host="localhost",
            user="yourusername",
            password="yourpassword"
        )
        cursor = conn.cursor()

        # 2) Create database if it doesn't exist
        cursor.execute(
            "CREATE DATABASE IF NOT EXISTS alx_book_store"
        )
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        # Handle connection errors or creation failures
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Invalid credentials")
        else:
            print(f"Error: {err}")

    finally:
        # 3) Clean up: close cursor and connection if open
        try:
            cursor.close()
        except NameError:
            pass
        try:
            conn.close()
        except NameError:
            pass

if __name__ == "__main__":
    main()
