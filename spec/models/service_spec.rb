require 'spec_helper'

describe Service do
  before do
    @service = build(:service)
  end
  
  it "has a valid fatory" do
    @service.should be_valid
  end
  
  it "is valid with a String as 'name'" do
    expect(@service.name).to be_kind_of(String)
    expect(@service.name).to eq("makeup")
  end
  
  it "is invalid a numeric name" do
    expect(Service.new(name: 23432)).to_not be_valid
  end
  
  it "will not allow a name to be blank" do
    service_blank = build(:service, name: "")
    
    expect(service_blank.name).to eq("")
    service_blank.should_not be_valid
  end
end
