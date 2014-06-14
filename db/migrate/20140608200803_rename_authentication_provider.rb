class RenameAuthenticationProvider < ActiveRecord::Migration
  def up
    rename_table 'authentication_providers', 'authentications'
    rename_column 'authentications', 'provider_name', 'provider'
  end

  def down
    rename_table 'authentications', 'authentication_providers'
    rename_column 'authentication_providers', 'provider', 'provider_name'
  end
end
