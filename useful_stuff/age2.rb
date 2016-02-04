puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

def ask_gender
  puts "What is your gender (m/f)?"
gender = gets.chomp.downcase
  if gender == "m" || "f"
    return gender_correct
  else
    puts "That is not a valid gender, try again"
    ask_gender
end
end

gender = ask_gender

if gender == "m"
  salutation = "Sir"
else
  gender == "f"
  salutation = "Madam"
end

if age >= 100
  puts "OMG you are old"
    else
      date = ((100 - age) + Time.now.year)
      date = date.to_s
      years_left = 100 - age
      puts "Dear #{salutation} #{name}, you will turn a 100 years old in #{date}. That is #{years_left} years from now."
end
