class ResidentialApplicationsController < ApplicationController
  before_action :set_residential_application, only: [:show, :edit, :update, :destroy]

  # GET /residential_applications
  # GET /residential_applications.json
  def index
    @residential_applications = ResidentialApplication.all
  end

  # GET /residential_applications/1
  # GET /residential_applications/1.json
  def show
  end

  # GET /residential_applications/new
  def new
    @residential_application = ResidentialApplication.new
  end

  # GET /residential_applications/1/edit
  def edit
  end

  # POST /residential_applications
  # POST /residential_applications.json
  def create
    @residential_application = ResidentialApplication.new(residential_application_params)

    respond_to do |format|
      if @residential_application.save
        format.html { redirect_to @residential_application, notice: 'Residential application was successfully created.' }
        format.json { render :show, status: :created, location: @residential_application }
      else
        format.html { render :new }
        format.json { render json: @residential_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residential_applications/1
  # PATCH/PUT /residential_applications/1.json
  def update
    respond_to do |format|
      if @residential_application.update(residential_application_params)
        format.html { redirect_to @residential_application, notice: 'Residential application was successfully updated.' }
        format.json { render :show, status: :ok, location: @residential_application }
      else
        format.html { render :edit }
        format.json { render json: @residential_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residential_applications/1
  # DELETE /residential_applications/1.json
  def destroy
    @residential_application.destroy
    respond_to do |format|
      format.html { redirect_to residential_applications_url, notice: 'Residential application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residential_application
      @residential_application = ResidentialApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residential_application_params
      params.require(:residential_application).permit(:date_received, :date_completed, :fee_paid)
    end
end
