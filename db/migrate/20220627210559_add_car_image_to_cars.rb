class AddCarImageToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :car_image, :string
  end
end
