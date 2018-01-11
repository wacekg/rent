class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :mark
      t.string :model
      t.integer :year_prod
      t.integer :prince
      t.text :description
      t.integer :mileage
      t.text :fuel

      t.timestamps
    end
  end
end
