class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: true, inclusion: { in: (0..5).to_a, allow_nil: false }
  validates :content, presence: true
end
