class AddPlayerIdToCommand < ActiveRecord::Migration
  def change
    add_column :commands, :player_id, :integer
  end
end
