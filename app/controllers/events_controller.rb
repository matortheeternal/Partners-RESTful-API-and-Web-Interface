class EventsController < ApplicationController
  before_action :signed_in_user
  before_action :educator_user,   only: [:new, :edit, :create, :update]
  before_action :admin_user,      only: [:destroy, :import]
  before_action :set_event,       only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.filter(params.slice(:Data, :Time, :Location, :CompletionStatus))
    respond_to do |format|
      format.html
      format.csv { send_data @events.to_csv }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  # import /events
  def import
    Event.import(params[:file])
    redirect_to events_url, notice: "Events imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:eventID, :date, :time, :location, :GPSLocation, :completionStatus, :description, :startTime, :endTime, :totalTime, :survey)
    end
end
