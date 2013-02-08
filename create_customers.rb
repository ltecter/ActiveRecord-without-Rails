load 'ar.rb'

new_customer = Customer.new

puts new_customer.inspect

new_customer.name = "Wally Glutton"
new_customer.email = "me@here.com"
new_customer.address = "160 Princess St."
new_customer.city = "Winnipeg"

puts new_customer.inspect

if (new_customer.save)
  puts "Customer was saved"
else
  puts "Customer was not saved."
  puts new_customer.errors.inspect
end

puts new_customer.inspect

another_customer = Customer.new(:name => "Walter Glutton",
                                :email => "walter@mailinator.com")
another_customer.city = "Winnipeg"

# We still need to save another_customer to persist it.

yet_another_customer = Customer.create(:name => "Kyle Geske",
                                       :email => "kyle@mailinator.com",
                                       :city => "Winnipeg")

# Using create means taht if our Customer is valid, it will be
# automatically saved to the customers db table
