# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    first_name "John"
    middle_name "Q."
    last_name "Doe"
    address_1 "123 Foo St"
    address_2 "Apt 1"
    city "Fooville"
    state "DC"
    zip 20011
  end
end
