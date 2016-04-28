class ResidentialLeadsController < ApplicationController
  before_action :set_residential_lead, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /residential_leads
  # GET /residential_leads.json
  def search
    if params[:search].present?
        @residential_leads = ResidentialLead.search(params[:search])
    else
        @residential_leads = ResidentialLead.all.order('contact_date DESC')
    end
  end

  def index
    @residential_leads = ResidentialLead.order(sort_column + " " + sort_direction).order('contact_date DESC')
  end


  # GET /residential_leads/1
  # GET /residential_leads/1.json
  def show
  end

  # GET /residential_leads/new
  def new
    @residential_lead = ResidentialLead.new
   @residential_lead.residential_applications.build
   @residential_lead.prequalifications.build
  end

  # GET /residential_leads/1/edit
  def edit
  end

  # POST /residential_leads
  # POST /residential_leads.json
  def create
    @residential_lead = ResidentialLead.new(residential_lead_params)

    respond_to do |format|
      if @residential_lead.save
        format.html { redirect_to @residential_lead, notice: 'Residential lead was successfully created.' }
        format.json { render :show, status: :created, location: @residential_lead }
      else
        format.html { render :new }
        format.json { render json: @residential_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residential_leads/1
  # PATCH/PUT /residential_leads/1.json
  def update
    respond_to do |format|
      if @residential_lead.update(residential_lead_params)
        format.html { redirect_to @residential_lead, notice: 'Residential lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @residential_lead }
      else
        format.html { render :edit }
        format.json { render json: @residential_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residential_leads/1
  # DELETE /residential_leads/1.json
  def destroy
    @residential_lead.destroy
    respond_to do |format|
      format.html { redirect_to residential_leads_url, notice: 'Residential lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

   def sort_column
      ResidentialLead.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_residential_lead
      @residential_lead = ResidentialLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residential_lead_params
      params.require(:residential_lead).permit(:first_name, :last_name, :email, :phone, :contact_type, :earliest_move_in, :latest_move_in, :price_min, :price_max, :properties_referenced, :profession, :employer, :people, :pets, :income, :source, :combined_income, :contact_date, :notes, :availability, :preferences, :appointment_date, :appointment_time, :spaces, :application_date, :application_on_file, :credit_score, :is_artist, :art_description, :status,
        prequalifications_attributes: [:residential_lead_id, :earliest_move_in, :latest_move_in, :price_min, :price_max, :people, :pets, :profession, :employer, :income, :combined_income, :preference, :preferences, :availability, :smoker, :prequalification_date, :prequalification_on_file])
    end
end
