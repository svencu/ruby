
#two blue prints: Animal and Parrot
class Animal
  def initialize color, age, name, mood
    @feather_color = color
    @age = age
    @name = name
    @mood = mood
  end
  #getter and setter methods:
  def mood
    puts "#{@name} is a #{@mood} #{Animal.class} because his feathers are #{@feather_color}."
  end
end

#Parrot inherets all elements of Animal class
class Parrot < Animal
end

class Parrot < Animal
  def speak
      puts "#{@name} wants a cookie"
  end
end

class Cat < Animal
end

class Cat < Animal
  def name
    puts "#{@name}"
  end
end


koekie = Parrot.new(:grey, "4 years", "Koekie", "grumpy")
poekie = Parrot.new(:yellow, "2 years", "Poekie", "happy")
snoes = Cat.new(:grey, "4 years", "Koekie", "grumpy")

animals = [koekie, poekie, snoes]

animals.each do |animal|
  animal.mood
end
