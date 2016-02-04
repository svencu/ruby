
ingredients = [
    {"name" => "onions", "quantity" => 2},
    {"name" => "garlic cloves", "quantity" => 3},
    {"name" => "canned tomatoes", "quantity" => 2},
    {"name" => "salt", "quantity" => "1 teaspoon"},
    {"name" => "minced meat", "quantity" => "500 grams"},
    ]


puts "\nBolognese sauce recipe
\nIngredients:\n"

ingredients.each do |ingredient|
	puts "#{ingredient["quantity"]} #{ingredient["name"]}"
end

puts "\nStep 1 is cutting the onions. Are you ready to start? Hit enter!"
  ready = gets.chomp

onion_counter = 1
while onion_counter < 3
	puts "Cut onion #{onion_counter}"
	onion_counter = onion_counter + 1
end

puts "\nWell done!!\n\nStep 2 is squeezing the garlic. To continue hit enter."
  ready = gets.chomp

garlic_counter = 1
for garlic_counter in 1...4
  puts "Squeeze garlic clove #{garlic_counter}"
  garlic_counter = garlic_counter + 1
end

puts "\nAwesome! The hard work is done!\n\nNow grab frying pan and warm it up on a medium to high fire. When the pan is warm, hit enter to continue."
  ready = gets.chomp

onion = ingredients[0]
garlic = ingredients[1]
tomatoes = ingredients[2]
salt = ingredients[3]
meat = ingredients[4]

puts "Now add the ingredients in the following order:"
puts onion["name"], garlic["name"], meat["name"], tomatoes["name"], salt["name"]
