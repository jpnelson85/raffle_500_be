class CreateParticipantCarDriverTable < ActiveRecord::Migration[7.0]
  def change
    create_table :participant_car_driver do |t|
      t.references :participant, null: false, foreign_key: true
      t.references :car_driver, null: false, foreign_key: true
      t.timestamps
    end
  end
end
