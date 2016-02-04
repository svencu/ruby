class Animal
  def initialize age, name, color
    @age = age
    @name = name
    @color = color
  end
  def say_name
    puts "#{@name}"
  end

  def noise
    puts "#{@name} makes no noise"
  end
end

class Parrot < Animal
  def speak
    puts "#{@name} wants a cookie"
  end
  def noise
    speak
  end
end
class Wolf < Animal
end
class Cat < Animal
  def noise
    purr
  end
  def purr
    puts "#{@name} does RRrrrrr"
  end
end
koekie = Parrot.new(17, 'Koekje', :grey)
snoes = Cat.new(10, 'Snoesje', :red)
woolfie = Wolf.new(10, 'Woolf', :grey)
animals = [koekie, snoes, woolfie]
animals.each do |animal|
  animal.noise
end
