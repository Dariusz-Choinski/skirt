require 'sqlite3'

db  =  SQLite3::Database.open('../dev.db')
db.execute <<-SQL
  CREATE TABLE users_products (
    user_id INTEGER,
    product_id INTEGER
  );
SQL

db.execute <<-SQL
  CREATE INDEX user_id_index ON users_products (user_id);
  CREATE INDEX product_id_index ON users_products (product_id)
SQL

db.close 
