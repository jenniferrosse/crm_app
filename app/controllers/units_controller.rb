class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

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
    @units = Unit.order(sort_column + " " + sort_direction).order('market_rent DESC')
  end

  # GET /available_units/1
  # GET /available_units/1.json
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
    @unit = Unit.new(unit_params, params[:gallery_id])

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

    def sort_column
      Unit.column_names.include?(params[:sort]) ? params[:sort] : "available"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:unit_number, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features, :lease_end_date, :prospects, :available)
    end
end
