require 'sqlite3'

db  =  SQLite3::Database.open('../dev.db')
db.execute <<-SQL
  CREATE TABLE users (
    id  INTEGER PRIMARY KEY,
    name VARCHAR(30),
    surname VARCHAR(30),
    email VARCHAR(60)
  );
SQL

db.close

