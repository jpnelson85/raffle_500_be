class Participant < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence: true
  validates :age, presence: true
  has_many :participant_car_driver
  has_many :car_drivers, through: :participant_car_driver
end