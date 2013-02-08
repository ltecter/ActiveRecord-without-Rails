load 'ar.rb'

product_to_delete = Product.find(10002)
puts product_to_delete.inspect
product_to_delete.destroy  unless product_to_delete.nil?