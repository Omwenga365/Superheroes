class Power < ApplicationRecord
    has_many :hero_powers
    has_many :heroes, through: :hero_powers
  
    validates :name, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { maximum: 500 }
  end
  