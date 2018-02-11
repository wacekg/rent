class AddDeletedAtToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :deleted_at, :datetime
    add_index :bookings, :deleted_at

    add_column :cars, :deleted_at, :datetime
    add_index :cars, :deleted_at
  end
end
