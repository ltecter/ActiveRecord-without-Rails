load 'ar.rb'

first_customer = Customer.first

puts first_customer.inspect

first_customer.name = "Mr McGoooooo"

puts first_customer.inspect

first_customer.save

winnipeg_customers = Customer.where(:city => "Winnipeg")

winnipeg_customers.each do |customer|
  customer.name += "ski"
  customer.save
end

winnipeg_customers.each do |customer|
  puts customer.name
end
