require 'bundler/setup'
Bundler.require
require 'SQLite3'

DB = {conn: SQLite3::Database.new("yelp.db")}

# require_all 'yelp'

require_relative '../concerns/databasable.rb'
require_relative '../models/customer.rb'
require_relative '../models/restaurant.rb'
require_relative '../models/review.rb'
require_relative '../tools/seed.rb'
require_relative '../views/restaurants/new.rb'
require_relative '../controllers/restaurants_contoller.rb'
