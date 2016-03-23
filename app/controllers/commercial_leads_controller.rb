class CommercialLeadsController < ApplicationController
  before_action :set_commercial_lead, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /commercial_leads
  # GET /commercial_leads.json
  def index
    @commercial_leads = CommercialLead.all.order ('contact_date DESC')
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
    # Use callbacks to share common setup or constraints between actions.
    def set_commercial_lead
      @commercial_lead = CommercialLead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commercial_lead_params
      params.require(:commercial_lead).permit(:first_name, :last_name, :email, :phone, :contact_type, :description, :source, :contact_date, :properties_referenced)
    end
end
