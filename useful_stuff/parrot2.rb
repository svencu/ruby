
class Parrot
  def initialize color, age, name, mood
    @feather_color = color
    @age = age
    @name = name
    @mood = mood
  end
  #getter and setter methods:
  def mood
    puts "#{@name} is #{@mood} because his feathers are #{@feather_color}."
  end
end



koekie = Parrot.new(:grey, "4 years", "Koekie", "grumpy")
poekie = Parrot.new(:yellow, "2 years", "Poekie", "happy")
parrots = [koekie, poekie]

koekie.mood
poekie.mood
