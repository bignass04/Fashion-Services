require 'spec_helper'

describe Location do
  before :each do
  	@location = build(:location)
  end

  it "is valid with a 2 letter state" do
    expect(@location.state).to eq("DC")
  	expect(@location).to be_valid
  end

  it "is invalid with a blank state" do
  	location = build(:location, state: "")
  	expect(location).to_not be_valid
  end

  it "is invalid if the state is other than 2 capital letters long" do
  	expect(build(:location, state: "sfadfadf")).to_not be_valid
  	expect(build(:location, state: "d")).to_not be_valid
  	expect(build(:location, state: "SDFSDF")).to_not be_valid
  	expect(build(:location, state: "D")).to_not be_valid
  	expect(build(:location, state: "132")).to_not be_valid
  end
end
