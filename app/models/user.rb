class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy

  has_one_attached :person_image
end
