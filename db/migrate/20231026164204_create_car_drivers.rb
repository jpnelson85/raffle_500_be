class CreateCarDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :car_drivers do |t|
      t.string :driver_name
      t.integer :number
      t.integer :start_pos
      t.string :car_type
      t.boolean :previous_winner
      
      t.timestamps
    end
  end
end
