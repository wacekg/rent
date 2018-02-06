class AddApprovedToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :approved, :boolean, default: false
  end
end
