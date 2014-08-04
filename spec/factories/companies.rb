# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
  	name "Youtube Corp"
    address_1 "123 Bourbon St."
    address_2 "P.O. Box 234"
    city "Silver Spring"
    location
    service
  end
end