class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero

  validates :strength, inclusion: { in: %w[Strong Weak Average], message: "Strength must be one of 'Strong', 'Weak', or 'Average'" }

  validates :power_id, uniqueness: { scope: :hero_id, message: "already added to the hero" }
  
end
