class SocietiesController < ApplicationController
  before_action :set_society, only: [:show, :edit, :update, :destroy]

  # GET /societies
  # GET /societies.json
  def index
    @societies = Society.all
  end

  # GET /societies/1
  # GET /societies/1.json
  def show
  end


  # GET /societies/new

  def new
    @society = Society.new
  end


  # GET /societies/1/edit
=begin
  def edit
  end
=end

  # POST /societies
  # POST /societies.json
  def create
    @society = Society.new(society_params)

    respond_to do |format|
      if @society.save
        format.html { redirect_to societies_confirmation_path, notice: 'Society was successfully created.' }
        format.json { render action: 'show', status: :created, location: @society }
      else
        format.html { render action: 'new' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /societies/1
  # PATCH/PUT /societies/1.json
  def update
    respond_to do |format|
      if @society.update(society_params)
        format.html { redirect_to @society, notice: 'Society was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @society.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /societies/1
  # DELETE /societies/1.json
=begin
  def destroy
    @society.destroy
    respond_to do |format|
      format.html { redirect_to societies_url }
      format.json { head :no_content }
    end
  end
=end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_society
      @society = Society.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def society_params
      params.require(:society).permit(:society_name, :registration_number, :club_website, :club_nickname, :password, :president_name, :president_phone_number, :president_email, :treasurer_name, :treasurer_phone_number, :treasurer_email, :club_biz_administrator_name, :club_biz_administrator_phone_number, :club_biz_administrator_email)
    end
end
