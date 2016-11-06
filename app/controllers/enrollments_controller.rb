class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /enrollments
  # GET /enrollments.json
  def index
    @enrollments = Enrollment.all
  end

  # GET /enrollments/1
  # GET /enrollments/1.json
  def show
  end

  # GET /enrollments/new
  def new
    @enrollment = Enrollment.new
    @open_registries = Registry.open_registries
    @coordinators = Coordinator.order(:name)
    @participants = Participant.order(:name)
    if params[:registry_id]
      @enrollment.registry = Registry.find(params[:registry_id])
    end
  end

  # GET /enrollments/1/edit
  def edit
    @registries = Registry.open_registries
    @coordinators = Coordinator.order(:name)
    @participants = Participant.order(:name)
  end

    # GET /enrollments/1/add
  def add
    @registry_id = params[:registry_id]
    #@enrollment = Enrollment.find(params["id"])
    @enrollment = Enrollment.new
  end
  # POST /enrollments/1/add_participant
  def add_participant
    my_params = enrollment_params.merge({:registry_id => params[:registry_id]})
    @enrollment = Enrollment.new(my_params)
    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to @enrollment, notice: 'Enrollment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enrollment }
      else
        format.html { render action: 'new' }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(enrollment_params)

    binding.pry
    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to enrollments_url, notice: 'Enrollment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @enrollment }
      else
        format.html { render action: 'new' }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollments/1
  # PATCH/PUT /enrollments/1.json
  def update
    respond_to do |format|
      if @enrollment.update(enrollment_params)
        format.html { redirect_to enrollments_url , notice: 'Enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment.destroy
    respond_to do |format|
      format.html { redirect_to enrollments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment
      @enrollment = Enrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrollment_params
      params.require(:enrollment).permit(:enrollment_date, :method_of_contact, :remarks, :coordinator_id, :registry_id, :participant_id)
    end
end
