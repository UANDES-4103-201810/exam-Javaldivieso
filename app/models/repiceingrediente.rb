class Repiceingrediente < ApplicationRecord
	has_many :ingredientes
	belongs_to :repice

end
