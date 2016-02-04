puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "What is your gender (m/f)?"
gender = gets.chomp

if gender == "m"
  salutation = "Sir"
    else
      if gender == "f"
        salutation = "Madam"
          else
            salutation = "genderless"
        end
end

date = ((100 - age) + Time.now.year)

date = date.to_s

puts "Dear #{salutation} #{name}, you will turn a 100 years old in #{date}"
