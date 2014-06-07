FactoryGirl.define do
  factory :unit do
    unit_type 'A'
    territory
  end

  factory :territory do
    name 'London'
    code 'LON'
  end
end
