FactoryGirl.define do
  factory :location do
    state "DC"
  end

  factory :price do
    service
    company
    customer
    amount 20.35

    trait :bad_price do
      amount "twenty dollars"
    end
  end

  factory :service do
    name "makeup"
  end

  factory :company do
  	name "Youtube Corp"
  	phone 9148069980
  	email "youtube@gmail.com"
    address_1 "123 Bourbon St."
    address_2 "P.O. Box 234"
    city "Silver Spring"
    location
    after(:create) do |company|
      company.customers << FactoryGirl.build(:customer, :pass_1)
      company.services << FactoryGirl.build(:service)
    end
  end
end