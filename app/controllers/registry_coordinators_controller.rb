class RegistryCoordinatorsController < ApplicationController
  before_action :set_registry_coordinator, only: [:show, :edit, :update, :destroy]

  # GET /registry_coordinators
  # GET /registry_coordinators.json
  def index
    @registry_coordinators = RegistryCoordinator.all
  end

  # GET /registry_coordinators/1
  # GET /registry_coordinators/1.json
  def show
  end

  # GET /registry_coordinators/new
  def new
    @registry_coordinator = RegistryCoordinator.new
  end

  # GET /registry_coordinators/1/edit
  def edit
  end

  # POST /registry_coordinators
  # POST /registry_coordinators.json
  def create
    @registry_coordinator = RegistryCoordinator.new(registry_coordinator_params)

    respond_to do |format|
      if @registry_coordinator.save
        format.html { redirect_to @registry_coordinator, notice: 'Registry coordinator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registry_coordinator }
      else
        format.html { render action: 'new' }
        format.json { render json: @registry_coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registry_coordinators/1
  # PATCH/PUT /registry_coordinators/1.json
  def update
    respond_to do |format|
      if @registry_coordinator.update(registry_coordinator_params)
        format.html { redirect_to @registry_coordinator, notice: 'Registry coordinator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registry_coordinator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registry_coordinators/1
  # DELETE /registry_coordinators/1.json
  def destroy
    @registry_coordinator.destroy
    respond_to do |format|
      format.html { redirect_to registry_coordinators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry_coordinator
      @registry_coordinator = RegistryCoordinator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registry_coordinator_params
      params[:registry_coordinator]
    end
end
