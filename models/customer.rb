class Customer

include Databaseable::InstanceMethods
extend Databaseable::ClassMethods

ATTRIBUTES = {
  id: "INTEGER PRIMARY KEY",
  name: "TEXT",
  hometown: "TEXT"
}

attr_accessor :name
attr_reader :id

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def add_review
  customer.review = self
end

def add_restaurant
  customer.restaurant = self
end

def find_by_name(name)
  sql = <<-SQL
    SELECT *
    FROM customers
    WHERE name = ?
    LIMIT 1
  SQL

  DB[:conn].execute(sql,name).map do |row|
    self.new_from_db(row)
  end.first
end


end