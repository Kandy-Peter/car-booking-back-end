class CarSerializer < ActiveModel::Serializer
  attributes :id, :name, :model, :per_day_amount
end
