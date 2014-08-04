# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    address_1 "238 Hampshire Ave"
    address_2 "Apt 1"
    city "Washington"
    company
    location

    trait :number_name do
        first_name 234
        middle_name 987
        last_name 324
    end

    trait :symbol_name do
        first_name "!@#$%^&*_+="
        middle_name "!@#$%^&*_+="
        last_name "!@#$%^&*_+="
    end

    trait :valid_names do
        first_name "John"
        middle_name "Quinn"
        last_name "Doe"
    end

    trait :valid_names_symbols do
        first_name "John-Glenn"
        middle_name "Q."
        last_name "O' Neill"
    end
  end
end
