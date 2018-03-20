class CommercialLeadsController < ApplicationController
  before_action :set_commercial_lead, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  # GET /commercial_leads
  # GET /commercial_leads.json
  def search
    if params[:search].present?
        @commercial_leads = CommercialLead.search(params[:search])
    else
        @commercial_leads = CommercialLead.all.order('initial_contact DESC')
    end
  end

  def index
    @commercial_leads = CommercialLead.all.order('initial_contact DESC')

      respond_to do |format|
        format.html
        format.csv { render text: @commercial_leads.to_csv }
        format.xls { send_data @commercial_leads.to_csv(col_sep: "\t") }
      end
  end
  def active
    @commercial_leads = CommercialLead.joins(:status).where(statuses: { 
      name: "Active" }).order('initial_contact DESC')
    render action: :index
  end

  def application
    @commercial_leads = CommercialLead.joins(:status).where(statuses: { 
      name: "Application" }).order('initial_contact DESC')
    render action: :index
  end

  def signed
    @commercial_leads = CommercialLead.joins(:status).where(statuses: { 
      name: "Signed" }).order('initial_contact DESC')
    render action: :index
  end

  def rented_elsewhere
    @commercial_leads = CommercialLead.joins(:status).where(statuses: { 
      name: "Rented Elsewhere" }).order('initial_contact DESC')
    render action: :index
  end

  def not_a_good_fit
    @commercial_leads = CommercialLead.joins(:status).where(statuses: { 
      name: "Not a Good Fit" }).order('initial_contact DESC')
    render action: :index
  end

  def send_email
  end
  # GET /commercial_leads/1
  # GET /commercial_leads/1.json
  def show
  end

  # GET /commercial_leads/new
  def new
    @commercial_lead = CommercialLead.new
  end

  # GET /commercial_leads/1/edit
  def edit
  end

  # POST /commercial_leads
  # POST /commercial_leads.json
  def create
    @commercial_lead = CommercialLead.new(commercial_lead_params)

    respond_to do |format|
      if @commercial_lead.save
        format.html { redirect_to @commercial_lead, notice: 'Commercial lead was successfully created.' }
        format.json { render :show, status: :created, location: @commercial_lead }
      else
        format.html { render :new }
        format.json { render json: @commercial_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercial_leads/1
  # PATCH/PUT /commercial_leads/1.json
  def update
    respond_to do |format|
      if @commercial_lead.update(commercial_lead_params)
        format.html { redirect_to @commercial_lead, notice: 'Commercial lead was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercial_lead }
      else
        format.html { render :edit }
        format.json { render json: @commercial_lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercial_leads/1
  # DELETE /commercial_leads/1.json
  def destroy
    @commercial_lead.destroy
    respond_to do |format|
      format.html { redirect_to commercial_leads_url, notice: 'Commercial lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def sort_column
      CommercialLead.column_names.include?(params[:sort]) ? params[:sort] : "initial_contact"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_commercial_lead
      @commercial_lead = CommercialLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercial_lead_params
      params.require(:commercial_lead).permit(:first_name, :last_name, :email, :phone, :contact_type, :description, :source_id, :contact_date, :properties_referenced, :use, :notes, :properties_suggested, :properties_shown, :appointment_date, :company_name, :website, :size, :occupancy_date, :budget_max, :next_follow_up, :follow_up, :old_status, :old_broker, :old_source, :initial_contact, :initial_response, :broker_id, :status_id, :contact_method_id, :size_min, :size_max, :use_type_id)
    end
end
