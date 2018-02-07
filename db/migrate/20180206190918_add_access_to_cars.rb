class AddAccessToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :access, :boolean
  end
end
