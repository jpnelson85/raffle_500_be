class CarDriver < ApplicationRecord
  validates_uniqueness_of :driver_name
  validates_uniqueness_of :start_pos
  validates :driver_name, presence: true
  validates :start_pos, presence: true
  has_many :participant_car_driver
  has_many :participants, through: :participant_car_driver
end