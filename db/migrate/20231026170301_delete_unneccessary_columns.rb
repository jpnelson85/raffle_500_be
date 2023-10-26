class DeleteUnneccessaryColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :participants, :drivers
    remove_column :participants, :default
    remove_column :participants, :[]
  end
end
