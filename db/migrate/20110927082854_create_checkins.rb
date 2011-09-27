class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.text :airline
      t.text :flight
      t.text :passenger
      t.text :seat
      t.timestamps
    end
  end
end
