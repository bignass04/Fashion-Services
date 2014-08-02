require 'spec_helper'

describe ServicesController do
  before {
    @service = build(:service)
  }
  describe "GET index" do
    it "assigns @services" do
      get :index
      expect(assigns(:services)).to eq[@service]
    end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
      expect(response).to redirect_to(services_index_path)
      expect(response.status).to eq(200)
    end
  end
  
  describe "GET new" do
    it "renders the form to create a service" do
      get :new
      expect(response).to render_template(:new)
      expect(response).to redirect_to(services_index_path)
    end
  end
  
  describe "POST create" do
    it "creates a new service" do
      get :create
    end
  end
end
