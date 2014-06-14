class User < ActiveRecord::Base
  has_many :authentication_providers
end
