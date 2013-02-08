load 'ar.rb'
require 'pp'

puts "There are #{Customer.count} rows in the customers table."

puts "The first row in the customers table is: "

pp   Customer.first.name

pp Customer.last.postal_code

puts Customer.first.inspect

customers = Customer.order('name DESC').limit(100)
puts customers.class
puts customers.size

customers.each do |customer|
  puts "#{customer.name} #{customer.email}"
end

customers_from_winnipeg = Customer.where(:city => 'Winnipeg')

puts "There are #{customers_from_winnipeg.size} Winnipeggers in the db."

customers_from_winnipeg.each do |customer|
  puts "#{customer.name} #{customer.address}"
end

a_customers_from_winnipeg = Customer.where(:city => 'Winnipeg').where('name LIKE "A%"').limit(2)

a_customers_from_winnipeg.each do |customer|
  puts "#{customer.name} #{customer.address}"
end