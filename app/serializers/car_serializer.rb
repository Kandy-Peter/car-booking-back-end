class CarSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  # attributes :id, :name, :model, :reserved, :per_day_amount, :car_img

  # def car_img
  #   return { url: rails_blob_url(object.image) } unless object.image.attached?
  # end
end
