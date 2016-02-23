class RestaurantsController

def add(name)
  restaurant = Restaurant.new(name)
  puts "Great you have added #{restaurant.name}!"
end

def find(name)
  restaurant = Restaurant.find_by_name(name)
  puts "Restaurant: #{restaurant.name.capitalize}"
end

def index
Restaurant.all.each do |restaurant|
    puts "restaurant: #{restaurant.name}"
  end
end

end