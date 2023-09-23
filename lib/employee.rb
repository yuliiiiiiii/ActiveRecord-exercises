class Employee < ActiveRecord::Base
  belongs_to :store

  #employees must have a first name and a last name
  validates :first_name, :last_name, presence: true
  #validates :last_name, presence: true

  #validates that employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40,
  less_than_or_equal_to: 200 }

  #validates that employess must always have a store that they belong to
  validates :store, presence: true
end
