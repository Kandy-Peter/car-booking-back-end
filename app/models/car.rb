class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, presence: true, length: { minimum: 1, maximum: 100 }
  validates :model, presence: true, length: { minimum: 1, maximum: 100 }
  validates :per_day_amount, presence: true
  validates :car_image, presence: true
  validates :user_id, presence: true
end
