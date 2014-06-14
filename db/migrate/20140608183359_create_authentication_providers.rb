class CreateAuthenticationProviders < ActiveRecord::Migration
  def change
    create_table :authentication_providers do |t|
      t.string :provider_name
      t.string :uid
      t.string :nickname

      t.timestamps
    end
  end
end
