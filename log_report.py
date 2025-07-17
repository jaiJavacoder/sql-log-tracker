import mysql.connector
import csv

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="log_tracker"
)
cursor = conn.cursor()

# Query logs
cursor.execute("SELECT * FROM user_logs")
rows = cursor.fetchall()

# Write to CSV
with open("log_report.csv", mode="w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(["ID", "Username", "Activity", "Log Time"])
    writer.writerows(rows)

print("Log report saved as 'log_report.csv'.")

cursor.close()
conn.close()
