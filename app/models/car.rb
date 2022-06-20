class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  has_one_attached :car_image
end