class Pizza < ApplicationRecord
	has_one :repice
	has_one :crust
	has_many :pizzaorder
end
