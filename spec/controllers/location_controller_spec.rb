require 'spec_helper'

describe LocationController do
	describe "GET #index" do
		it "populates an array of locations" do
			location = build(:location)
			get :index
			expect(assigns(:locations)).to eq([location])
		end

		it "renders the :index view" do
			get :index
			expect(response).to render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested location to @location" do
			location = build(:location)
			get :show, id: location
			expect(assigns(:locations)).to eq(location)
		end

		it "renders the :show template" do
			get :show, id: build(:location)
			expect(response).to render_template :show
		end
	end

	describe "GET #new" do
		it "assigns a new Location to @location"
		it "renders the :new template"
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new location in the database"
			it "redirects to the home page"
		end

		context "with invalid attributes" do
			it "does not save the new location in the database"
			it "re-renders the :new template"
		end
	end
end
