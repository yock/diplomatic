class Authentication < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |auth_provider|
      auth_provider.provider = auth['provider']
      auth_provider.uid = auth['uid']
      auth_provider.nickname = auth['info']['nickname']
    end
  end
end
