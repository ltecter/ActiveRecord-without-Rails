load 'ar.rb'
#The long way to finding the province associated with a customer
a_customer = Customer.first

puts a_customer.inspect

customer_province_id = a_customer.province_id

a_province = Province.find(customer_province_id)

puts a_province.inspect

# The AR way is...

puts "The customer's province is #{a_customer.province.name}"

puts "The province of #{a_province.name} has #{a_province.customers.size} customers."

new_customer_old_way = Customer.new(:name => "New Customer")
new_customer_old_way.province_id = a_province.id
#Then we would save the customer.

#The AR way is...
new_customer = a_province.customers.build

puts new_customer.inspect

another_province = Province.last

puts another_province.inspect

another_new_customer = another_province.customers.build

puts another_new_customer.inspect
