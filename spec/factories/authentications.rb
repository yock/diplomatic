FactoryGirl.define do
  factory :authentication do
    provider 'twitter'
    uid '12345'
    user
  end
end
