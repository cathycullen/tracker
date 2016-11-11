class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update, :destroy]

  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.order(:name)
    respond_to do |format|
     format.html
     format.csv { send_data @participants.to_csv }
     format.xls  { send_data @participants.to_csv(col_sep: "\t") }
    end
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    fresh_when last_modified: @participant.updated_at
  end

  # GET /participants/new
  def new
    @participant = Participant.new
    @coordinators = Coordinator.order(:name)
  end

  # GET /participants/1/edit
  def edit
    @coordinators = Coordinator.order(:name)
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)

    respond_to do |format|
      if @participant.save
        format.html { redirect_to participants_url, notice: 'Participant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @participant }
      else
        format.html { render action: 'new' }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to participants_url, notice: 'Participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to participants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:name, :gender, :dob, :enrollment_date, :coordinator_id, :phone, :email, :method_of_contact, :remarks)
    end
end
