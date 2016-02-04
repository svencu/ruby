require 'colorize'

$products = {
      A: {
        name: "Apple",
        price: 0.99
      },
      B: {
        name: "Banana",
        price: 1.15
      },
      C: {
        name: "Peach",
        price: 0.89
      }
    }

$producta_count = 0
$productb_count = 0
$productc_count = 0

def select_item
        puts "\nPlease select your item (A-C) to add it to your cart:
        A] #{$products[:A][:name]}
        B] #{$products[:B][:name]}
        C] #{$products[:C][:name]}
        P] Proceed to checkout
        "
        item = gets.chomp.upcase

        if item == "A"
          $producta_count += 1
          puts "#{"One #{$products[:A][:name]} added!".colorize(:green)}"
          return select_item
        else
          if item == "B"
          $productb_count += 1
          puts "#{"One #{$products[:B][:name]} added!".colorize(:green)}"
          return select_item
        else
          if item == "C"
          $productc_count += 1
          puts "#{"One #{$products[:C][:name]} added!".colorize(:green)}"
          return select_item
        else
          if item == "P"
          return check_out
        else
          return no_item
        end
      end
    end
  end
end

def no_item
  puts "#{"That is not a valid option, try again:".colorize(:red)}"
  return select_item
end



def check_out
  $total = (($products[:A][:price] * $producta_count)+($products[:B][:price] * $productb_count)+($products[:C][:price] * $productc_count)).round(2)
  puts "\nYou have the following items in your shopping cart:\n
  #{$producta_count} x #{$products[:A][:name]}
  #{$productb_count} x #{$products[:B][:name]}
  #{$productc_count} x #{$products[:C][:name]}}
  \nTotal amount: #{$total}"
  puts "\nIf you want to buy these items, please enter the total amount: #{$total} as confirmation:"
  payment = gets.chomp.to_i
  if payment == $total
    puts "paid"
  else puts "unpaid"
  end
end

select_item

puts "\nThank you, come again!\n\n"
