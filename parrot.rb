
class Parrot
  def initialize color, age, name, mood
    @feather_color = color
    @age = age
    @name = name
    @mood = mood
  end
  #getter and setter methods:
  def age
    return @age
  end
  def feather_color
    return @feather_color
  end
  def name
    return @name
  end
  def mood
    return @mood
  end
end


parrot = Parrot.new(:grey, "4 years", "Koekie", "Grumpy")

puts parrot.name
puts "is"
puts parrot.mood
puts "\nbut\n\n"
parrot = Parrot.new(:yellow, "2 years", "Poekie", "Happy")

puts parrot.name
puts "is"
puts parrot.mood
