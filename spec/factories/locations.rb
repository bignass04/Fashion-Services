# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    state "DC"
  end

  location = FactoryGirl.create(:location)
end
