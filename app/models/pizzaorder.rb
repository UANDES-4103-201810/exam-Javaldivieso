class Pizzaorder < ApplicationRecord
	has_many :pizzas
	belong_to :order
end
