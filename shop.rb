
items = [
    {"name" => "onions", "price" => 1},
    {"name" => "garlic", "price" => 2.5},
    {"name" => "bananas", "price" => 3},
    {"name" => "apples", "price" => 5.5},
    ]

  def select_item
      puts "Please select an item to buy it:
      a) onions
      b) garlic
      c) bananas
      d) apples
      "
      selection = gets.chomp.upcase
      return validation(selection)
    end


def validation(selection)
      if selection == "a" || selection == "b" || selection == "c" || selection == "d"
        return valid(selection)
      else
        puts "Not a valid option, please select an item:
        a)onions
        b)garlic
        c)bananas
        d)apples
        "
        selection = gets.chomp.upcase
        return validation(selection)
      end
end

def valid(selection)
  if selection == "a"
  onion_count = onion_count + 1
  else
    if selection == "b"
    garlic_count = garlic_count + 1
  else
    if selection == "c"
    banana_count = banana_count + 1
  else
    if selection == "d"
    apple_count = apple_count + 1
    end
  end
  end
  end
end

def select_more
puts "Would you like to make another purchase? y/n"
another_purchase = gets.chomp.downcase
  if
    another_purchase == "y"
    return select_item
  end
end

select_item


onion_count = 0
garlic_count = 0
banana_count = 0
apple_count = 0
