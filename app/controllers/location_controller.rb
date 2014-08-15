class LocationController < ApplicationController
	def index
		@locations = Location.all
	end

	def show
		@location = set_params

		respond_to do |format|
			format.html { redirect_to @location }
			format.json { render action: 'show', status: :created, location: @location }
		end
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)

		respond_to do |format|
	      	if @service.save
	        	format.html { redirect_to @location, notice: 'Location was successfully created.' }
	        	format.json { render action: 'show', status: :created, location: @location }
	      	else
	        	format.html { render action: 'new' }
	        	format.json { render json: @location.errors, status: :unprocessable_entity }
	      	end
	    end
	end

	def update
		location = set_params
    	location.update!(location_params)
    	redirect_to location
	end

	def destroy
		@service.destroy
    	respond_to do |format|
    		format.html { redirect_to services_url }
    		format.json { head :no_content }
    	end
	end

	private
		#Set common callbacks
		def set_params
			@location = Location.find(params[:id])
		end

		def location_params
			params.require(:location).permit(:state)
		end
	end
end
