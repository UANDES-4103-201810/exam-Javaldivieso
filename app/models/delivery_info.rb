class DeliveryInfo < ApplicationRecord
	belongs_to :user
	validates :user_id, presence: true
	validates :phone, numericality: { message: "wrong" }
end
