#cat = {color: :red, age: "7 years", fur_type: "long"}

#puts cat[:age]


class Cat
  def initialize color, age
    @fur_color = color
    @age = age
  end
  #getter and setter methods:
  def age
    return @age
  end
end

cat = Cat.new(:red, "7 years")

puts cat.age
