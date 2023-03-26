class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  validates :level, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
end

