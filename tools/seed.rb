restaurants = ['Pickle Shack', 'Champs', 'Duck Duck', 'Ramona', 'Toad Style'].map do |name|
  Restaurant.new(name) do |restaurant|
    restaurant.name = "#{restaurant.name}"
    customer = customer.new("#{customer}")
    customer.name = "#{customer}"
    restaurant.customer = customer
  end
end