class AddTableCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :limit, :integer
    add_column :cars, :supplement, :integer
  end
end
