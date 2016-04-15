class PrequalificationsController < ApplicationController
  before_action :find_residential_lead
  before_action :find_prequalification, only: [:show]
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
    @prequalification = @residential_lead.prequalifications.new
  end

  # GET /prequalifications/1/edit
  def edit
  end

  # POST /prequalifications
  # POST /prequalifications.json
  def create
    @prequalification = @residential_lead.prequalifications.new prequalification_params
    if @prequalification.save
      redirect_to residential_lead_prequalification_path(@residential_lead, @prequalification)
    else
      render 'new'
    end
  end

  private

    def prequalification_params
      params.require(:prequalification).permit(:earliest_move_in, :latest_move_in, :price_min, :price_max, :people, :pets, :profession, :employer, :income, :combined_income, :preference, :preferences, :availability, :smoker, :prequalification_date)
    end

    def find_residential_lead
      @residential_lead = ResidentialLead.find(params[:residential_lead_id])
    end

    def find_prequalification
      @prequalification = Prequalification.find(params[:id])
    end
    
end
