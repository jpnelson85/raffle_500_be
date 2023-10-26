class AddDriversToParticipantsWithArrayAsDefault < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :drivers, :jsonb, default: []
  end
end
