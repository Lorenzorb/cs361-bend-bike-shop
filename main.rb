!# /usr/bin/env ruby
require_relative 'luggage'
require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

rental = Rental.new(Bike.new(1, :pink, 99.99), Luggage.new(items))

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"
