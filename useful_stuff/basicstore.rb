class Products
end
#test

#products222

apple = Products.new
apple.name = "Apple"
apple.id = "A"
apple.price = 0.5

banana = Products.new
banana.name = "Banana"
banana.id = "B"
banana.price = 0.75

lemon = Products.new
lemon.name = "Lemon"
lemon.id = "C"
lemon.price = 1


class Store

  def initialize
  @basket []
  @catalogue []

  def add(product)
    @catalogue.push(product)
  end

  def products_available
    @catalogue.each do |product|
      puts "#{product.id}: #{product.name} - #{product.price} euros"
  	end
  end

  def choose_products
    "Choose product A-C"
    product_selected = gets.chomp.upcase
    if product_selected == "A"






end



  puts "
  ) Apple
  B) Banana
  C) Lemon
  \n\nA-C?"
  if
    gets.chomp.upcase == "A"
