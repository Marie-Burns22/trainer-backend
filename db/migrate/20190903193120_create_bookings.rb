class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time
      t.integer :client_id
      t.integer :service_id

      t.timestamps
    end
  end
end
