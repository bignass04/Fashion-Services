# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    location_id 1
    service_id 1
  end
end
