class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :short_name
      t.boolean :supply_center
      t.boolean :supports_fleet

      t.timestamps
    end
  end
end
