# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: 'tomato')
Ingredient.create(name: 'olive')
Ingredient.create(name: 'mozzarella')
Ingredient.create(name: 'onion')
Ingredient.create(name: 'ham')
Ingredient.create(name: 'shrimp')

Repice.create(price: 1000)
Repice.create(price: 1001)
Repice.create(price: 1002)

Crust.create(tipo: 'Regular', price: 100)
Crust.create(tipo: 'thin', price: 101)
Repiceingrediente.create(ingredient_id: 1, repice_id:1)
Repiceingrediente.create(ingredient_id: 2, repice_id:1)
Repiceingrediente.create(ingredient_id: 3, repice_id:1)

Repiceingrediente.create(ingredient_id: 3, repice_id:2)
Repiceingrediente.create(ingredient_id: 5, repice_id:2)
Repiceingrediente.create(ingredient_id: 4, repice_id:2)

Pizza.create(name: 'Queso', crust_id:1, repice_id:1)
Pizza.create(name: 'Pepperoni', crust_id:2, repice_id:2)
