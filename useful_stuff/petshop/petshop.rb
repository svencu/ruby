require "./items"
require "./items/animals"
require "./items/food"
require "./store"

#Animals
cat = Animals.new
cat.id = "A"
cat.name = "Cat"
cat.price = 50
cat.color = :grey

dog = Animals.new
dog.id = "B"
dog.name = "Dog"
dog.price = 80
dog.color = :brown

#Food
cat_food = Food.new
cat_food.id = "C"
cat_food.name = "Cat food"
cat_food.price = 2.5

dog_food = Food.new
dog_food.id = "D"
dog_food.name = "Dog food"
dog_food.price = 3

#Items
cat_leash = Items.new
cat_leash.id = "E"
cat_leash.name = "Cat leash"
cat_leash.price = 8

dog_leash = Items.new
dog_leash.id = "F"
dog_leash.name = "Dog leash"
dog_leash.price = 10

petStore = Store.new

petStore.add_to_catalogue cat
petStore.add_to_catalogue dog
petStore.add_to_catalogue dog_food
petStore.add_to_catalogue cat_food
petStore.add_to_catalogue cat_leash
petStore.add_to_catalogue dog_leash
petStore.inventory
