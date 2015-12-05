class Location < ActiveRecord::Base
  validates :base, :unit, :country, :pascode, :billets, presence: true
  validates :billets, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # Great use of validations and default_scope
  default_scope { order('base ASC') }

  has_many :pilots

  # future use variables to breakout locations by country
  # @oconus = Location.where(oconus: true)
  # @stateside = Location.where(oconus: false)
end
