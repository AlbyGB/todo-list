import sqlite3 as sq

conn = sq.connect('tododb.db')

cur = conn.cursor()

with open('tables.sql') as f:
    sql = f.read()
    cur.executescript(sql)

conn.commit()
conn.close()