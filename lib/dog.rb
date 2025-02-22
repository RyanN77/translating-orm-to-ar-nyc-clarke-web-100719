ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/dogs.sqlite"
)

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS dog (
  id INTEGER PRIMARY KEY,
  name TEXT
  )
SQL
 
ActiveRecord::Base.connection.execute(sql)

class Dog < ActiveRecord::Base
end
