class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :super_power_id

      t.timestamps
    end
  end
end
