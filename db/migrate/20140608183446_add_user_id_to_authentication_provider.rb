class AddUserIdToAuthenticationProvider < ActiveRecord::Migration
  def change
    add_column :authentication_providers, :user_id, :integer
  end
end
