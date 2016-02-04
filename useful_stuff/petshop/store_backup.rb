require 'colorize'

$producta_count = 0
$productb_count = 0
$productc_count = 0
$productd_count = 0
$producte_count = 0
$productf_count = 0

class Store
  def initialize
    @catalogue= []
  end
  def add_to_catalogue a
    @catalogue.push(a)
  end
  def inventory
    puts "\nWelcome to PetsPlanet - Where pets still count! \n\nWe have the following items in store at the moment:\n\n"
    @catalogue.each do |item|
      puts "#{item.id}) #{item.name} @ #{item.price},- Euro"
    end
    return select_item
  end
end

def select_item
          puts "\n-Please select your item (A-F) to add it to your cart-\n
Or select P to proceed to checkout.
          "
          item = gets.chomp.upcase

          if item == "A"
            $producta_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
          else
            if item == "B"
            $productb_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
          else
            if item == "C"
            $productc_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
          else
            if item == "D"
            $productd_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
          else
            if item == "E"
            $producte_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
          else
            if item == "F"
            $productf_count += 1
            puts "#{"Added!".colorize(:green)}"
            return inventory
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
end
end
end


def no_item
  puts "#{"That is not a valid option, try again:".colorize(:red)}"
  return select_item
end

def check_out
  puts "\nYou have the following items in your shopping cart:\n
  #{$producta_count} * Cat
  #{$productb_count} * Dog
  #{$productc_count} * Cat food
  #{$productd_count} * Dog food
  #{$producte_count} * Cat leash
  #{$productf_count} * Dog leash
  \n"
  puts "#{"\nTotal amount: 0,- \nToday is your lucky day!!! Everything is for !FREE!".colorize(:green)}"
end



#automate adding to catalogue
#add id number to items
