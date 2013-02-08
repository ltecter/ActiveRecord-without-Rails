load 'ar.rb'

a_product = Product.first
puts a_product.inspect
#Products columns: Product id, name, description, price, stock_quantity,
#category_id, created_at, updated_at
#The product table looks like it has an association with a categories table
#due to the category_id column
all_products = Product.all
puts all_products.count
products_name_starts_C_price_greater_10 = Product.where('name LIKE "C%" AND price > 10')

products_name_starts_C_price_greater_10.each do |product|
  puts product.name
end

puts products_quantity_less_5 = Product.where('stock_quantity < 5').count

prod_cat_id = a_product.category_id
a_product_category = Category.find(prod_cat_id)
puts a_product_category.name