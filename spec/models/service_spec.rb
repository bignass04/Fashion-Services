require 'spec_helper'

describe Service do
  before do
    @service = build(:service)
  end
  
  it "has a valid fatory" do
    @service.should be_valid
  end
  
  it "will say a String-based name is valid" do
    expect(@service.name).to be_kind_of(String)
    expect(@service.name).to eq("makeup")
  end
  
  it "will reject a numeric name" do
    expect(Service.new(name: 23432)).to_not be_valid
  end
  
  it "will not allow a name to be blank" do
    service_blank = build(:service, name: "")
    
    expect(service_blank.name).to eq("")
    service_blank.name.should_not be_valid
  end
end
