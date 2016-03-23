class AvailableUnitsController < ApplicationController
  before_action :set_available_unit, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /available_units
  # GET /available_units.json
  def index
    @available_units = AvailableUnit.all
  end

  # GET /available_units/1
  # GET /available_units/1.json
  def show
  end

  # GET /available_units/new
  def new
    @available_unit = AvailableUnit.new
  end

  # GET /available_units/1/edit
  def edit
  end

  # POST /available_units
  # POST /available_units.json
  def create
    @available_unit = AvailableUnit.new(available_unit_params)

    respond_to do |format|
      if @available_unit.save
        format.html { redirect_to @available_unit, notice: 'Available unit was successfully created.' }
        format.json { render :show, status: :created, location: @available_unit }
      else
        format.html { render :new }
        format.json { render json: @available_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_units/1
  # PATCH/PUT /available_units/1.json
  def update
    respond_to do |format|
      if @available_unit.update(available_unit_params)
        format.html { redirect_to @available_unit, notice: 'Available unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_unit }
      else
        format.html { render :edit }
        format.json { render json: @available_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_units/1
  # DELETE /available_units/1.json
  def destroy
    @available_unit.destroy
    respond_to do |format|
      format.html { redirect_to available_units_url, notice: 'Available unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_unit
      @available_unit = AvailableUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_unit_params
      params.require(:available_unit).permit(:unit_id, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features)
    end
end
