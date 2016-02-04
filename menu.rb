#main menu

puts "Choose your car:
a) Audi
b) Benz
c) Cadillac
[a-c]:"
car = gets.chomp.downcase

#sub menu

      if car == "a"
        puts " You chose Audi.

        _____$$$$$$___$$$$$$___$$$$$$___$$$$$$
        ___$________$________$________$________$
        __$________$_$______$_$______$_$________$
        __$________$_$______$_$______$_$________$
        ___$________$________$________$________$
        _____$$$$$$___$$$$$$___$$$$$$___$$$$$$

        a) View properties
        b) View price"
        asub = gets.chomp.downcase
      else
        if car == "b"
          puts " You chose Benz.
          a) View properties
          b) View price"
          bsub = gets.chomp.downcase
      else
        if car == "c"
          puts " You chose Cadillac.
          a) View properties
          b) View price"
          csub = gets.chomp.downcase
      else
        "not a valid choice"
    end
  end
end

#Audio info
      if asub == "a"
        puts "Audio properties
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
