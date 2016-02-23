class Review

include Databaseable::InstanceMethods
extend Databaseable::ClassMethods

ATTRIBUTES = {
  id: "INTEGER PRIMARY KEY",
  customer_id: "INTEGER",
  restaurant_id: "INTEGER"
}

attr_accessor :name
attr_reader :id

@@customers = []
@@restaurants = []

def initialize(customer, restaurant_name)
  @customer = customer
  @restaurant = restaurant_name
  @@customers << customer
  @@restaurants << restaurant
end



end