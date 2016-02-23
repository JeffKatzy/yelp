require 'pry'

class Restaurant

include Databaseable::InstanceMethods
extend Databaseable::ClassMethods

ATTRIBUTES = {
  id: "INTEGER PRIMARY KEY",
  name: "TEXT",
  location: "TEXT",
  owner_id: "INTEGER"
}

attr_accessor :name
attr_reader :id

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.find_by_name(name)
  sql = <<-SQL
    SELECT *
    FROM restaurants
    WHERE name = ?
    LIMIT 1
  SQL

  DB[:conn].execute(sql,name).map do |row|
    self.new_from_db(row)
  end.first
end

def owner

end

def restaurants
  sql = <<-SQL
    SELECT *
    FROM restaurants
  SQL
end

end