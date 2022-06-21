class CarSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers 

  attributes :id, :name, :model, :reserved, :per_day_amount, :car_image
  
  def car_image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
end
