require 'colorize'

products = {
      A: {
        name: "Apple",
        price: 0.99
      },
      B: {
        name: "Banana",
        price: 1.15
      },
      C: {
        name: "Lemon",
        price: 0.89
      }
    }

$apple_count = 0
$banana_count = 0
$lemon_count = 0

def select_item
        puts "\nPlease select your item (A-B) to add it to your cart:
        A] Apple
        B] Banana
        C] Lemon
        "
        item = gets.chomp.upcase

        if item == "A"
          $apple_count += 1
          return add_more
        else
          if item == "B"
          $banana_count += 1
          return add_more
        else
          if item == "C"
          $lemon_count += 1
          return add_more
        else
          return no_item
        end
      end
  end
end

def no_item
  puts "#{"That is not a valid option, try again:".colorize(:red)}"
  return select_item
end


def add_more
    puts "Do you want to add another item? y/n"
    add_item = gets.chomp.downcase

    if add_item == "y"
      return select_item
    else
      return check_out
  end
end

def check_out
  puts "You have the following items in your shopping cart:
  #{$apple_count} apple(s)
  #{$banana_count} banana(s)
  #{$lemon_count} lemon(s)"
end

select_item

puts "Thank you for shopping!"
