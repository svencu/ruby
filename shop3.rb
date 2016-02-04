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
        puts "\nPlease select your item (A-B) to add it to your cart:
        A] #{$products[:A][:name]}
        B] #{$products[:B][:name]}
        C] #{$products[:C][:name]}
        D] Leave the store
        "
        item = gets.chomp.upcase

        if item == "A"
          $producta_count += 1
          return add_more
        else
          if item == "B"
          $productb_count += 1
          return add_more
        else
          if item == "C"
          $productc_count += 1
          return add_more
        else
          if item == "D"
          return
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
  $total = (($products[:A][:price] * $producta_count)+($products[:B][:price] * $productb_count)+($products[:C][:price] * $productc_count))
  puts "\nYou have the following items in your shopping cart:\n
  #{$producta_count} x #{$products[:A][:name]}
  #{$productb_count} x #{$products[:B][:name]}
  #{$productc_count} x #{$products[:C][:name]}
  \nTotal amount: #{$total}"

end

select_item

puts "\nThank you for shopping!\n\n"
