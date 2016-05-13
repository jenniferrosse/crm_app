class AvailableUnitsController < ApplicationController
  before_action :set_available_unit, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /available_units
  # GET /available_units.json
  def search
    if params[:search].present?
        @available_units = AvailableUnit.search(params[:search])
    else
        @available_units = AvailableUnit.all.order('lease_end_date DESC')
    end
  end

  def index
    @available_units = AvailableUnit.order(sort_column + " " + sort_direction).order('lease_end_date DESC')
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

    def sort_column
      AvailableUnit.column_names.include?(params[:sort]) ? params[:sort] : "lease_end_date"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_available_unit
      @available_unit = AvailableUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_unit_params
      params.require(:available_unit).permit(:unit_id, :sq_ft, :market_rent, :bedroom, :bathroom, :laundry, :address, :city, :zip, :craigslist_title, :short_description, :features, :lease_end_date, :prospects)
    end
end
