class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
