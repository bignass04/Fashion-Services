require 'spec_helper'

describe Customer do
  before do
  	#binding.pry
  	@valid_customer = build(:customer, :valid_names)
  	@invalid_customer_list = {
  		:customer_num => build(:customer, :number_name),
  		:customer_invalid_sym => build(:customer, :symbol_name),
  		:customer_valid_sym => build(:customer, :valid_names_symbols)
  	}
  end

  it "has a valid factory" do
  	@customer.should be_valid
  end

  it "is invalid with a non-alpha, non-hyphen, non-apostrophe character in the first name" do
  	@customer_list.each do |c|
  		c.should_not be_valid
  	end
  end
end
