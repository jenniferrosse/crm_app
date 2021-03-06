class GaragesController < ApplicationController
  before_action :set_garage, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /garages
  # GET /garages.json
  def index
    @garages = Garage.order(sort_column + " " + sort_direction).order('rent DESC', 'unit_id DESC')
    @hash = Gmaps4rails.build_markers(@garages) do |garage, marker|
      marker.lat garage.latitude
      marker.lng garage.longitude
      marker.infowindow garage.unit_id + "<br>" + garage.parking_type
    end
  end

  # GET /garages/1
  # GET /garages/1.json
  def show
  end

  # GET /garages/new
  def new
    @garage = Garage.new
  end

  # GET /garages/1/edit
  def edit
  end

  # POST /garages
  # POST /garages.json
  def create
    @garage = Garage.new(garage_params)

    respond_to do |format|
      if @garage.save
        format.html { redirect_to @garage, notice: 'Garage was successfully created.' }
        format.json { render :show, status: :created, location: @garage }
      else
        format.html { render :new }
        format.json { render json: @garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garages/1
  # PATCH/PUT /garages/1.json
  def update
    respond_to do |format|
      if @garage.update(garage_params)
        format.html { redirect_to @garage, notice: 'Garage was successfully updated.' }
        format.json { render :show, status: :ok, location: @garage }
      else
        format.html { render :edit }
        format.json { render json: @garage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garages/1
  # DELETE /garages/1.json
  def destroy
    @garage.destroy
    respond_to do |format|
      format.html { redirect_to garages_url, notice: 'Garage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      Garage.column_names.include?(params[:sort]) ? params[:sort] : "unit_id"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_garage
      @garage = Garage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garage_params
      params.require(:garage).permit(:unit_id, :address, :parking_type, :rent, :latitude, :longitude)
    end
end
