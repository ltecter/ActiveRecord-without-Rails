load 'ar.rb'

products_quantity_over_40 = Product.where('stock_quantity > 40')

products_quantity_over_40.each do |product|
  product.stock_quantity += 1
  puts product.inspect
  if (product.save)
    puts "#{product.name} was updated."
  else
    puts "There was a validation error when saving the product."
  end
end
