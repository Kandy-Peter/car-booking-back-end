class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.integer :per_day_amount

      t.timestamps
    end
  end
end
