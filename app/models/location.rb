class Location < ActiveRecord::Base
  validates :base, :unit, :country, :pascode, :billets, :emblem_url, presence: true
  validates :billets, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :oconus, inclusion: [true, false]
  default_scope { order('base ASC') }

  has_many :pilots

  # TODO: future use variables to breakout locations by country
  # @oconus = Location.where(oconus: true)
  # @stateside = Location.where(oconus: false)
end
