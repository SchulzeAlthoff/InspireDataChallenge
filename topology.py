import argparse
from os import getenv
import psycopg2

parser = argparse.ArgumentParser()
parser.add_argument("-H", "--host", help="host location of postgres database", type=str)
parser.add_argument("-U", "--user", help="username to connect to the database", type=str)
parser.add_argument("-P", "--password", help="password to connect to the database", type=str)
parser.add_argument("-d", "--dbname", help="database name", type=str)
parser.add_argument("-p", "--port", help="port to connect to postgres", type=str)
args = parser.parse_args()

connstring = (f'dbname={args.dbname} user={args.user} host={args.host} port={args.port} password={args.password}')
print (connstring)
conn = psycopg2.connect(connstring)
cur = conn.cursor()
print("connected to database")

cur.execute("SELECT MIN(id), MAX(id) FROM highways;")
min_id, max_id = cur.fetchone()
print(f"there are {max_id - min_id + 1} edges to be processed")
cur.close()

interval = 10000
for x in range(min_id, max_id+1, interval):
    cur = conn.cursor()
    cur.execute(f"select pgr_createTopology('highways', 0.001, 'way', 'id', rows_where:='id>={x} and id<{x+interval}');")
    conn.commit()
    x_max = x + interval - 1
    if x_max > max_id:
        x_max = max_id
    print(f"edges {x} - {x_max} have be processed")

cur = conn.cursor()
#cur.execute("""ALTER TABLE highways_vertices_pgr ADD COLUMN IF NOT EXISTS lat float8, ADD COLUMN IF NOT EXISTS lon float8;""")

#cur.execute("""UPDATE highways_vertices_pgr SET lat = ST_Y(the_geom), lon = ST_X(the_geom);""")

conn.commit()
