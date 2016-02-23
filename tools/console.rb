require_relative '../config/environment.rb'

choice = 0

while choice != 'exit'

puts 'What is the name of the action you want to take?
You can add, find, or type index to see a current list of restaurants!'

choice = gets.chomp.downcase

case choice

when 'add'
  puts 'What is the title of the restaurant you want to add?'
  restaurant_name = gets.chomp
  # puts "How would you rate this restaurant? (Type a number 1 to 5.)"
  # rating = gets.chomp
  controller = RestaurantsController.new
  controller.add(restaurant_name)

when "find"
  puts 'What is the name of the restuarant you want to see?'
  name = gets.chomp
  restaurant = Restaurant.find_by_name(name)
  puts "Restaurant: #{restaurant.name}"
  
when 'index'
 Restaurant.all.each do |restaurant|
  puts restaurant.name
  end
end

end