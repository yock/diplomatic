class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :type
      t.integer :territory_id

      t.timestamps
    end
  end
end
