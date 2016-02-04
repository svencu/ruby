

def results (car,ab)
#Audi info
      if car,ab == "a""a"
        puts "Audi properties
        -Sporty
        -Fast
        -Pretty"
      else
        if asub == "b"
          puts "Audi price
          10.000 Euro"
      else
        "not a valid choice"
    end
  end

#Benz info
      if bsub == "a"
        puts "Benz properties
        -Smooth
        -Comfortable
        -Impressive"
      else
        if bsub == "b"
          puts "Benz price
          20.000 Euro"
      else
        "not a valid choice"
    end
end

#Cadillac info
      if csub == "a"
        puts "Cadillac properties
        -American
        -BIG
        -Pink"
      else
        if csub == "b"
          puts "Audi price
          15.000 Euro"
      else
        "not a valid choice"
      end
    end
end

#main menu
puts "Choose your car:
a) Audi
b) Benz
c) Cadillac
[a-c]:"
car = gets.chomp.downcase

puts "Choose:
a) property
b) price
"
ab = gets.chomp.downcase

results(car,ab)
