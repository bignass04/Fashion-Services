FactoryGirl.define do
  factory :customer do
    prefix "Mr."
    first_name "Michael"
    middle_name "David"
    last_name "Nasser"
    suffix "PMP"
    phone 5188675309
    email "michael.nasser@gmail.com"
    address_1 "238 Hampshire Ave"
    address_2 "Apt 1"
    city "Washington"
    title "Makeup Artist"
    location

    trait :pass_1 do
      prefix "Ms."
      first_name "Jan"
      middle_name "Pieter"
      last_name "Levinson-Gould"
    end

    trait :pass_2 do
      prefix "Dr."
      first_name "Martin Luther"
      middle_name nil
      last_name "King"
      suffix "Jr."
    end

    trait :pass_3 do
      prefix "Mr."
      first_name "John"
      middle_name "Quinn"
      last_name "Doe"
    end

    trait :pass_4 do
      prefix "Ms."
      first_name "Mary-Jo Jane"
      middle_name "S."
      last_name "Smith"
      suffix "III"
      title "Lighting Designer"
    end

    trait :pass_5 do
      prefix "Mrs."
      first_name "Brett"
      middle_name ""
      last_name "d'Arras-d' Haudracey"
    end

    trait :fail_1 do
      prefix "Mr."
      first_name "Fatty"
      middle_name "345"
      last_name "Mc.Error$"
      title "Lighting Designer"
    end

    trait :fail_2 do
      prefix "Ms."
      first_name "FA!L"
      last_name "U&E"
    end

    trait :fail_3 do
      prefix "Miss"
      first_name "#arold"
      last_name "Newm@n"
    end

    trait :fail_4 do
      prefix "Mr."
      first_name "N4m3"
      middle_name "w1th"
      last_name "Numb3r5"
    end

    trait :no_first_name do
      prefix "Mr."
      middle_name "Q."
      last_name "Rembrandt"
    end

    trait :no_last_name do
      prefix "Mr."
      first_name "Hugo"
      middle_name "Q."
    end

    trait :no_prefix do
      first_name "Hugo"
      last_name "Rembrandt"
    end

    after(:build) do |customer|
      customer.services << FactoryGirl.build(:service)
      customer.companies << FactoryGirl.build(:company)
    end
  end
end