class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /available_units
  # GET /available_units.json
  def search
    if params[:search].present?
        @units = Unit.search(params[:search])
    else
        @units = Unit.all.order('lease_end_date DESC')
    end
  end

  def index
    @units = Unit.includes(:property).order('properties.name DESC, unit_number ASC')
  end

  # GET /available_units/1.json
  # GET /available_units/1
  def show
  end

  # GET /available_units/new
  def new
    @unit = Unit.new(property_id: params[:property_id])
  end

  # GET /available_units/1/edit
  def edit
  end

  # POST /available_units
  # POST /available_units.json
  def create
    @unit = Unit.new(unit_params, params[:property_id])

    respond_to do |format|
      if @unit.save
        format.html { redirect_to @unit, notice: 'Unit was successfully created.' }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_units/1
  # PATCH/PUT /available_units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to @unit, notice: 'Unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit }
      else
        format.html { render :edit }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_units/1
  # DELETE /available_units/1.json
  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to units_url, notice: 'Unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:unit_number, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features, :lease_end_date, :prospects, :available, :property_id, :net_rent_min, :net_rent_max, :lease_type)
    end
end
