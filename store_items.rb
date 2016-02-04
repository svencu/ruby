class Item
  attr_accessor :price, :name, :restriction
  def describe
    puts "#{@name}"
  end
  def am_i_old_enough age
    if age < @restriction
      puts "you can't buy this"
    else
      puts "have fun"
    end
  end
end

class Sweet < Item
  def describe
    puts "#{@name} is very sweet"
  end
end

class Cigarette < Item
  def describe
    puts "#{@name} is very smokey"
  end
end

class Cigar < Item
  def describe
    puts "#{@name} is for grandpa"
  end
end

malboro = Cigarette.new
malboro.price = 10
malboro.restriction = 16
malboro.name = "Malboro"

frogs = Sweet.new
frogs.price = 0.05
frogs.restriction = 1
frogs.name = "Frogs"


items = [malboro, frogs]
items.each do |item|
  puts item.price
  item.am_i_old_enough 10
end
