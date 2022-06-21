class CarSerializer < ActiveModel::Serializer
  attributes :id, :name, :model, :reserved, :per_day_amount
end
