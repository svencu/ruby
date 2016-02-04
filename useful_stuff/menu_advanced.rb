#main menu

def validation_car(car)
  if car == "a" || car == "b" || car == "c"
    return valid(car)
  else
    return invalid
  end
end
def valid(car)
  puts"correct"
end
def invalid
  puts"try again please.
  Choose your car:

      a) Audi
      b) Benz
      c) Cadillac"
  car = gets.chomp.downcase
  validation_car(car)
end



#Main menu
puts"Choose your car:

    a) Audi
    b) Benz
    c) Cadillac"
    car = gets.chomp.downcase

validation_car(car)
