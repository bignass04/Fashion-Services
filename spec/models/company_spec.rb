require 'spec_helper'

describe Company do

  it "has a valid factory" do
  	company = build(:company)
  	binding.pry
  	company.should be_valid
  end
end
