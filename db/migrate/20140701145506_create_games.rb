class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :token

      t.timestamps
    end
  end
end
