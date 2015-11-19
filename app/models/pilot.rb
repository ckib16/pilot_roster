class Pilot < ActiveRecord::Base
  validates :name, :rank, :hours, :qualification, :commision_date, :adsc, presence: true
  validates :hours, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  default_scope { order('qualification ASC') }

  belongs_to :location
end
