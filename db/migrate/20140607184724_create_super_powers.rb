class CreateSuperPowers < ActiveRecord::Migration
  def change
    create_table :super_powers do |t|
      t.string :name

      t.timestamps
    end
  end
end
