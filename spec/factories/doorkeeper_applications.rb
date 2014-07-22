FactoryGirl.define do
  factory :doorkeeper_application, class: Doorkeeper::Application do
    name 'test application'
    uid '1'
    secret 'secret'
    redirect_uri 'urn:ietf:wg:oauth:2.0:oob'
  end
end

