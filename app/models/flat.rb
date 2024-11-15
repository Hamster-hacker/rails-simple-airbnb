class Flat < ApplicationRecord

  # has_many :reviews, dependent: :destroy

  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, :number_of_guests, numericality: { only_integer: true}

end
