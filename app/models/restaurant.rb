class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :stars, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: true }
end
