class VolsController < ApplicationController
  before_action :signed_in_user
  before_action :admin_user
  before_action :set_vol, only: [:show, :edit, :update, :destroy]

  # GET /vols
  # GET /vols.json
  def index
    @vols = Vol.filter(params.slice(:Prefix, :NamePreferred, :NameLast, :Suffix, :Title, :Email1))
    respond_to do |format|
      format.html
      format.csv { send_data @vols.to_csv }
    end
  end

  # GET /vols/1
  # GET /vols/1.json
  def show
  end

  # GET /vols/new
  def new
    @vol = Vol.new
  end

  # GET /vols/1/edit
  def edit
  end

  # POST /vols
  # POST /vols.json
  def create
    @vol = Vol.new(vol_params)

    respond_to do |format|
      if @vol.save
        format.html { redirect_to @vol, notice: 'Vol was successfully created.' }
        format.json { render :show, status: :created, location: @vol }
      else
        format.html { render :new }
        format.json { render json: @vol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vols/1
  # PATCH/PUT /vols/1.json
  def update
    respond_to do |format|
      if @vol.update(vol_params)
        format.html { redirect_to @vol, notice: 'Vol was successfully updated.' }
        format.json { render :show, status: :ok, location: @vol }
      else
        format.html { render :edit }
        format.json { render json: @vol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vols/1
  # DELETE /vols/1.json
  def destroy
    @vol.destroy
    respond_to do |format|
      format.html { redirect_to vols_url, notice: 'Vol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # import /vols
  def import
    Vol.import(params[:file])
    redirect_to vols_url, notice: "Volunteers imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vol
      @vol = Vol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vol_params
      params.require(:vol).permit(:IDVolunteer, :Prefix, :NameFirst, :NamePreferred, :NameMiddle, :NameLast, :Suffix, :Title, :Organization, :Street1, :City1, :State1, :ZipCode1, :Phone1, :PhoneCell, :Fax1, :Email1, :Website, :Gender, :BioEthnicity, :BioLanguage, :Coordinator, :Newsletter, :RetireeEmploymentHistory, :VolCommitment, :StudentSchool, :StudentMajor, :StudentGradYear, :VolMentor, :VolGuestSpeaker, :VolMockInterviews, :VolFieldTrip, :VolJobShadow, :VolComputer, :VolArts, :VolGarden, :VolTutor, :VolCareerDay, :VolInternships, :VolSpecialEvents, :VolSports, :VolLibrary, :VolFacilities, :VolJoinCommittee, :VolReading, :VolGroupProjects, :VolMusic, :VolLunchtime, :VolOffice)
    end
end
