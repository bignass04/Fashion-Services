require 'spec_helper'

describe Customer do
  before do
    @valid_customer = build(:customer)
  	@valid_customer_list = {
      pass_1: build(:customer, :pass_1),
      pass_2: build(:customer, :pass_2),
      pass_3: build(:customer, :pass_3),
      pass_4: build(:customer, :pass_4),
      pass_5: build(:customer, :pass_5)
    }
  	@invalid_customer_list = {
  		fail_1: build(:customer, :fail_1),
  		fail_2: build(:customer, :fail_2),
  		fail_3: build(:customer, :fail_3),
      fail_4: build(:customer, :fail_4)
  	}
  end

  it "has a valid factory" do
  	customer = build(:customer, :pass_1)
    expect(customer).to be_valid
  end

  it "is invalid with a non-alpha, non-hyphen, non-apostrophe character in the first name" do
  	#binding.pry
    @valid_customer_list.each do |k, valid|
      expect(valid).to be_valid
    end
    @invalid_customer_list.each do |k, invalid|
  		expect(invalid).to_not be_valid
  	end
  end

  it "is invalid without a first name" do
    no_first_name = build(:customer, :no_first_name)
    expect(no_first_name).to_not be_valid
  end

  it "is invalid without a last name" do
    no_last_name = build(:customer, :no_last_name)
    expect(no_last_name).to_not be_valid
  end

  it "is invalid without a prefix" do 
    no_prefix = build(:customer, :no_prefix)
    expect(no_prefix).to_not be_valid
  end

  it "returns a customer's full name as a string" do
    expect(@valid_customer.name).to eq("Mr. Michael David Nasser I")
  end
end
