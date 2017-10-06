require 'sqlite3'
require 'csv'

db  =  SQLite3::Database.open('dev.db')

Products = []
4.times do |i|
  Products.push ["Product no #{i}", i + 1]
end
Products.each do |product|
  db.execute("INSERT INTO products VALUES(null, ?, ?)", product)
end

Users = []
4.times do |i|
  no  = (i + 1).to_s
  Users.push ["User", no, "user#{no}@test.com"]
end
Users.each do |user|
  db.execute("INSERT INTO users VALUES( null, ?, ?, ?)", user)
end

csv = <<CSV
1,1
1,2
2,2
2,3
2,4
3,1
3,3
3,4
4,2
4,3
CSV

CSV.parse(csv, headers: false) do |row|
  db.execute "INSERT INTO users_products VALUES ( ?, ? )", [row[0].to_i, row[1].to_i]
end

db.close
