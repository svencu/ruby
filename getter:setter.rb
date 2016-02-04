

#getter / setter

#class Animal
#  def get_age
#    return @age
#  end
#  def set_age=(age)
#    @age = age
#  end
#end

#cat = Animal.new
#cat.age = 10
#puts cat.get_age




#OR


class Animal
  attr_accessor :age, :color, :name
end
class Parrot < Animal
  attr_accessor :amount_feathers
end

snoes = Animal.new
snoes.age = 10
snoes.color = :red
snoes.name = "snoes"

koekie = Parrot.new
koekie.age = 5
koekie.color = :blue
koekie.name = "koekie"
koekie.amount_feathers = 10



class Animal
  attr_accessor :age, :color, :name

  def move
    puts "#{@name} moving"
  end
end
class Parrot < Animal
  attr_accessor :amount_of_feathers
end

koekie = Parrot.new
koekie.name = "Kookie"
koekie.amount_of_feathers = 10
koekie.age = 7

snoes = Animal.new

animals = [koekie, snoes]
animals.each do |animal|
  animal.move
end
