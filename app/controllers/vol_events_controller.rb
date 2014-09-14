class VolEventsController < ApplicationController
  before_action :signed_in_user
  before_action :admin_user
  before_action :set_vol_event, only: [:show, :edit, :update, :destroy]

  # GET /vol_events
  # GET /vol_events.json
  def index
    @vol_events = VolEvent.filter(params.slice(:IDEvent, :IDVolunteer, :DateEvent, :EventType, :Project, :Hours, :HoursTotal, :NameSchool, :Status, :NameTeacher, :time))
    respond_to do |format|
      format.html
      format.csv { send_data @vol_events.to_csv }
    end
  end

  # GET /vol_events/1
  # GET /vol_events/1.json
  def show
  end

  # GET /vol_events/new
  def new
    @vol_event = VolEvent.new
  end

  # GET /vol_events/1/edit
  def edit
  end

  # POST /vol_events
  # POST /vol_events.json
  def create
    @vol_event = VolEvent.new(vol_event_params)

    respond_to do |format|
      if @vol_event.save
        format.html { redirect_to @vol_event, notice: 'Vol event was successfully created.' }
        format.json { render :show, status: :created, location: @vol_event }
      else
        format.html { render :new }
        format.json { render json: @vol_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vol_events/1
  # PATCH/PUT /vol_events/1.json
  def update
    respond_to do |format|
      if @vol_event.update(vol_event_params)
        format.html { redirect_to @vol_event, notice: 'Vol event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vol_event }
      else
        format.html { render :edit }
        format.json { render json: @vol_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vol_events/1
  # DELETE /vol_events/1.json
  def destroy
    @vol_event.destroy
    respond_to do |format|
      format.html { redirect_to vol_events_url, notice: 'Vol event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # import /vol_events
  def import
    VolEvent.import(params[:file])
    redirect_to vol_events_url, notice: "Volunteer events imported."
  end

  private
    def filtering_params(params)
      params
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_vol_event
      @vol_event = VolEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vol_event_params
      params.require(:vol_event).permit(:IDEvent, :IDVolunteer, :DateEvent, :EventType, :Project, :Hours, :Feedback, :HoursTotal, :NameSchool, :Status, :NameTeacher, :Time, :Instructions, :DatePassportCreated, :DatePassportDue, :IDRequest, :DateCreated, :DateModified, :AccountCreated, :AccountModified, :AccountPassportCreated, :ScheduleOngoing, :NameVolunteer, :EmailTeacher, :EmailVolunteer, :ProjectAndDate, :FeedbackVolunteer, :FeedbackTeacher, :AcademicYear)
    end
end
