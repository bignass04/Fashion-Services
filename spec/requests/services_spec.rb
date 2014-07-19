require 'spec_helper'

feature "Services" do
  it "validates a service path" do
    service = build(:service)
    visit services_path
    expect(service.name).to eq("makeup")  
  end
  
  it "allows a user to add a service to the DB and redirects them" do
    visit services_path
    #current_path.should eq(root_path)
    
  end
  
  it "displays a service" do
    
  end
  
  it "modifies a service" do
    
  end
  
  it "deletes a service" do
    
  end
end