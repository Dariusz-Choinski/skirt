require 'sqlite3'

db  =  SQLite3::Database.open('../dev.db')
db.execute <<-SQL
  CREATE TABLE products (
    id  INTEGER PRIMARY KEY, 
    name VARCHAR(30),
    qts INTEGER
  );
SQL

db.close

