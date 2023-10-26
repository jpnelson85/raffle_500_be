class AddDriversToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :drivers, :jsonb
    add_column :participants, :default, :string
    add_column :participants, :[], :string
  end
end
