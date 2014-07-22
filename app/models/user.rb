class User < ActiveRecord::Base
  has_many :authentications

  validates :display_name, :email, presence: true
end
