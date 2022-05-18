class Review < ApplicationRecord
  RATING_RANGE = (0..5).to_a
  belongs_to :restaurant   # @review.restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING_RANGE }, numericality: { only_integer: true }
end
