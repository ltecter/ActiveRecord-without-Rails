load 'ar.rb'

new_product = Product.new

new_product.id = "10000"
new_product.name  = "CPU"
new_product.description = "Central Processing Unit"
new_product.price = "100"
new_product.stock_quantity = "10"
new_product.created_at = Time.now
new_product.updated_at = Time.now

new_product.save

puts new_product.inspect

new_product2 = Product.new( {:id => 10001,
                            :name  => "Motherboard",
                            :description => "Main Board for components",
                            :price => "75",
                            :stock_quantity => "10",
                            :created_at => Time.now,
                            :updated_at => Time.now}, :without_protection => true)

new_product2.save

new_product3 = Product.new
new_product3 = Product.create( {:id => 10002,
                               :name  => "GPU",
                               :description => "Graphics Processing Unit",
                               :price => "125",
                               :stock_quantity => "10",
                               :created_at => Time.now,
                               :updated_at => Time.now}, :without_protection => true)

test_product = Customer.new( :name => "Stuff")
if (test_product.save)
  puts "Test product was saved to the database products table."
  puts test_product.inspect
else
  puts "There was an error saving the test product to the database."
  test_product.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end