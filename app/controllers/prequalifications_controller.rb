class PrequalificationsController < ApplicationController
  before_action :set_prequalification, only: [:show, :edit, :update, :destroy]

  # GET /prequalifications
  # GET /prequalifications.json
  def index
    @prequalifications = Prequalification.all
  end

  # GET /prequalifications/1
  # GET /prequalifications/1.json
  def show
  end

  # GET /prequalifications/new
  def new
    @prequalification = Prequalification.new
  end

  # GET /prequalifications/1/edit
  def edit
  end

  # POST /prequalifications
  # POST /prequalifications.json
  def create
    @prequalification = Prequalification.new(prequalification_params)

    respond_to do |format|
      if @prequalification.save
        format.html { redirect_to @prequalification, notice: 'Prequalification was successfully created.' }
        format.json { render :show, status: :created, location: @prequalification }
      else
        format.html { render :new }
        format.json { render json: @prequalification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prequalifications/1
  # PATCH/PUT /prequalifications/1.json
  def update
    respond_to do |format|
      if @prequalification.update(prequalification_params)
        format.html { redirect_to @prequalification, notice: 'Prequalification was successfully updated.' }
        format.json { render :show, status: :ok, location: @prequalification }
      else
        format.html { render :edit }
        format.json { render json: @prequalification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prequalifications/1
  # DELETE /prequalifications/1.json
  def destroy
    @prequalification.destroy
    respond_to do |format|
      format.html { redirect_to prequalifications_url, notice: 'Prequalification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prequalification
      @prequalification = Prequalification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prequalification_params
      params.require(:prequalification).permit(:earliest_move_in, :latest_move_in, :price_min, :price_max, :people, :pets, :profession, :employer, :income, :combined_income, :preference, :preferences, :availability, :smoker, :prequalification_date, :residential_lead_id)
    end
end
