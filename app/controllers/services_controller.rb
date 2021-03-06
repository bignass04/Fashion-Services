class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  
  def show
    @service = set_task
    
    respond_to do |format|
      format.html { redirect_to @service }
      format.json { render action: 'show', status: :created, location: @service }
    end
  end
  
  def new
    @service = Service.new
  end
  
  def create
    @service = Service.new(service_params)
    
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    service = set_task
    service.update!(service_params)
    redirect_to service
  end
  
  def destory
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_path }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name)
    end
end