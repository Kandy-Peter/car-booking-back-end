class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :city , presence: true
  validates :date , presence: true
  validates :user_id , presence: true
  validates :car_id , presence: true
end
