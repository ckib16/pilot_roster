class Location < ActiveRecord::Base
  has_many :users

  # future use variables to breakout locations by country
  # @oconus = Location.where(oconus: true)
  # @stateside = Location.where(oconus: false)
end
