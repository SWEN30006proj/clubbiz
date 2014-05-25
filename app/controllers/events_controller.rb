class EventsController < ApplicationController
  include EventsHelper
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

=begin
  # GET /events/1
  # GET /events/1.json
  def show
  end
=end

  # GET /events/new
  def new
      @event = Event.new
  end


=begin
  # GET /events/1/edit
  def edit
  end
=end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.societies_shared_with == string_to_integer_array(params[:societies_shared_with])
    #TODO receive params of society id
    respond_to do |format|
      if @event.save
        format.html { redirect_to society_homepage_index_path, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

=begin
  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
=end

=begin
  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
=end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :start_time, :finish_time, :venue, :event_type, :event_url, :image_urls, :max_num_tickets, :ticket_price, :ticket_start_date_time, :ticket_end_date_time, :ticket_purchase_pickup_information, :societies_shared_with)
    end
end
