class Review < ApplicationRecord
  belongs_to :restaurant
  rating_list = (0..5).to_a
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: rating_list }, numericality: { only_integer: true }
end
