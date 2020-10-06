import sqlite3
conn = sqlite3.connect('states.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE states (id INTEGER PRIMARY KEY, state char(100) NOT NULL, capital char(100) NOT NULL)")
conn.execute("INSERT INTO states (state,capital) VALUES ('ohio','columbus')")
conn.execute("INSERT INTO states (state,capital) VALUES ('texas','austin')")
conn.execute("INSERT INTO states (state,capital) VALUES ('california','sacramento')")
conn.execute("INSERT INTO states (state,capital) VALUES ('georgia','atlanta')")
conn.commit()