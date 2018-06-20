class Shopping < ApplicationRecord
	has_many :pizza
	belongs_to :user
end
