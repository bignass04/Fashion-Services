require 'spec_helper'

describe Company do
	before {
		@company = create(:company)
	}

	it "has a valid factory" do
		expect(@company).to be_valid
	end

	it "has a valid dollar amount" do
		expect(@company.get_amount).to be_numeric
	end
end
