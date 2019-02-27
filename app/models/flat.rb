class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :name, presence: true
end
