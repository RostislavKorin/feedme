class Meal < ApplicationRecord
	belongs_to :user
	validates :user_id, presence: true
	validates :description, presence: true, length: { maximum: 200 }
	validates :price, presence: true
	validates :weight, presence: true
end
