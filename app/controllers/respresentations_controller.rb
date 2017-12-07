class RepresentationsController < ApplicationController
  before_action :set_representation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @representations = Representation.all
  end

  def show
  end

  def new
    @representation = Representation.new(gallery_id: params[:gallery_id], event_id: params[:event_id])
  end

  def create
    @representation = Representation.new(representation_params)

    respond_to do |format|
    if @representation.save
        format.html { redirect_to @representation, notice: 'representation was successfully created.' }
        format.json { render :show, status: :created, location: @representation }
      else
        format.html { render :new }
        format.json { render json: @representation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @representation.update(representation_params)
        format.html { redirect_to @representation, notice: 'representation was successfully updated.' }
        format.json { render :show, status: :ok, location: @representation }
      else
        format.html { render :edit }
        format.json { render json: @representation.errors, status: :unprocessable_entity }
      end
    end 
  end

  def destroy
    @representation.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'representation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_representation
     @representation = Representation.find(params[:id])
    end

    def representation_params
      params.require(:representation).permit(:broker_id, :commercial_lead_id)
    end
end
