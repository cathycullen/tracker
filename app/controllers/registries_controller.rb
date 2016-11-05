
class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  # GET /registries
  # GET /registries.json
  def index
    @registries = Registry.all
  end

  # GET /registries/1
  # GET /registries/1.json
  def show
  end

  # GET /registries/new
  def new
    @registry = Registry.new
    @coordinator_ids = Coordinator.get_ids
  end

  # GET /registries/1/edit
  def edit
  end

  # POST /registries
  # POST /registries.json
  def create
    coordinator_id = params["registry"]["coordinator_id"].to_i
    @registry = Registry.new(registry_params)
    @coordinator = Coordinator.find(coordinator_id)
    respond_to do |format|
      if @registry.save
        @registry_coordinator = RegistryCoordinator.create!(:coordinator => @coordinator,
                                                            :registry => @registry)
        format.html { redirect_to registries_url, notice: 'Registry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registry }
      else
        format.html { render action: 'new' }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registries/1
  # PATCH/PUT /registries/1.json
  def update
    respond_to do |format|
      if @registry.update(registry_params)
        format.html { redirect_to registries_url, notice: 'Registry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registries/1
  # DELETE /registries/1.json
  def destroy
    @registry.destroy
    respond_to do |format|
      format.html { redirect_to registries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registry_params
      params.require(:registry).permit(:name, :location, :state)
    end
end
