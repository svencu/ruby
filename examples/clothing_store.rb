$catalog = {
            "A" => {item: "Shirt", color: "Black", price: 10},
            "B" => {item: "Pants", color: "Blue", price: 100},
            "C" => {item: "Shoes", color: "White", price: 150},
            "D" => {item: "Jeans", color: "Stone Wash", price: 200}
          }

$price = 0;
 #puts $catalog["A"]

# i = 0

# $catalog.each do |key, value|
#   puts key[:item]
# end

def getItem
  #ask for input
  puts "
  Please select your item (A-B):
  A] Shirt
  B] Pants
  C] Shoes
  D] Jeans
  "
  item = gets.chomp.upcase

  # if input valid, show item and get options
    if $catalog.has_key?(item)
      puts "Your selection: #{$catalog[item][:item]}"
      puts "Color: #{$catalog[item][:color]}"
      puts "Price: € #{$catalog[item][:price].to_s}"

      # ask user to buy it
      ask_Buy = upPrice(item)

    else
      puts "We don't have that item. Try again."
      getItem
    end
end

def upPrice(item)
  puts "Would you like to buy the #{$catalog[item][:item]}? (y/n)"
  buy = gets.chomp.downcase
  #validate input
  if val_YN(buy)
    if buy === "y"
      $price += $catalog[item][:price]
      puts "Your cart's total is now € #{$price.to_s}"
      # ask user to continue shopping
      shopMore
    else return
    end
  else
    upPrice(item)
  end

end

def shopMore
  puts "Would you like to select another item? (y/n)"
  more = gets.chomp.downcase
  #validate input
  if val_YN(more)
    if more === "y"
      # start from the top
      getItem
    else return
    end
  else
    shopMore
  end
end

def val_YN(a)
  if a != "y" && a != "n"
    puts "That is not a valid answer"
    return false
  else
    return true
  end
end

ask_User = getItem

puts "Thank you for visiting our store."
