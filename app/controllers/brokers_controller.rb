class BrokersController < ApplicationController
  before_action :set_broker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /brokers
  # GET /brokers.json
  def search
    if params[:search].present?
        @brokers = Broker.search(params[:search])
    else
        @brokers = Broker.all.order('first_name ASC')
    end
  end

  def index
    @brokers = Broker.all.order('first_name ASC')
    respond_to do |format|
      format.html
      format.csv { render text: @brokers.to_csv }
    end
  end

  # GET /brokers/1
  # GET /brokers/1.json
  def show
  end

  # GET /brokers/new
  def new
    @broker = Broker.new
  end

  # GET /brokers/1/edit
  def edit
  end

  # POST /brokers
  # POST /brokers.json
  def create
    @broker = Broker.new(broker_params)

    respond_to do |format|
      if @broker.save
        format.html { redirect_to @broker, notice: 'Broker was successfully created.' }
        format.json { render :show, status: :created, location: @broker }
      else
        format.html { render :new }
        format.json { render json: @broker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brokers/1
  # PATCH/PUT /brokers/1.json
  def update
    respond_to do |format|
      if @broker.update(broker_params)
        format.html { redirect_to @broker, notice: 'Broker was successfully updated.' }
        format.json { render :show, status: :ok, location: @broker }
      else
        format.html { render :edit }
        format.json { render json: @broker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brokers/1
  # DELETE /brokers/1.json
  def destroy
    @broker.destroy
    respond_to do |format|
      format.html { redirect_to brokers_url, notice: 'Broker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broker
      @broker = Broker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def broker_params
      params.require(:broker).permit(:first_name, :last_name, :email, :mobile, :direct_phone, :company, :address, :city, :zip)
    end
end
