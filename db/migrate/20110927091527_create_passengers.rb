class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.text :first_name
      t.text :last_name
      t.text :risk
      t.timestamps
    end
  end
end
