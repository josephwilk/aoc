class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :passenger
      t.text :passport
      t.text :eticket
      t.text :flight
      t.timestamps
    end
  end
end
