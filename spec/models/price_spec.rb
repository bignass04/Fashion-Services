require 'spec_helper'

describe Price do
  before {
  	@price = build(:price)
  }

  it "has a valid factory" do
  	expect(@price).to be_valid
  end

  it "has a valid price" do
  	binding.pry
  	expect(number_to_currency(@price.amount)).to be_valid
  end

  it "won't permit invalid prices" do
  	bad_price = build(:price, :bad_price)
  	expect(bad_price.amount).to_not be_valid
  end
end
