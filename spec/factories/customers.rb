# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    first_name "MyString"
    middle_name "MyString"
    last_name "MyString"
    company_id 1
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    location_id 1
  end
end