FactoryGirl.define do
  factory :service do
    name "makeup"
  end

  service = FactoryGirl.create(:service)
end