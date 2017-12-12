class UseTypesController < ApplicationController
  before_action :set_use_type, only: [:show, :edit, :update, :destroy]

  # GET /use_types
  # GET /use_types.json
  def index
    @use_types = UseType.all
  end

  # GET /use_types/1
  # GET /use_types/1.json
  def show
  end

  # GET /use_types/new
  def new
    @use_type = UseType.new
  end

  # GET /use_types/1/edit
  def edit
  end

  # POST /use_types
  # POST /use_types.json
  def create
    @use_type = UseType.new(use_type_params)

    respond_to do |format|
      if @use_type.save
        format.html { redirect_to @use_type, notice: 'Use type was successfully created.' }
        format.json { render :show, status: :created, location: @use_type }
      else
        format.html { render :new }
        format.json { render json: @use_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_types/1
  # PATCH/PUT /use_types/1.json
  def update
    respond_to do |format|
      if @use_type.update(use_type_params)
        format.html { redirect_to @use_type, notice: 'Use type was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_type }
      else
        format.html { render :edit }
        format.json { render json: @use_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_types/1
  # DELETE /use_types/1.json
  def destroy
    @use_type.destroy
    respond_to do |format|
      format.html { redirect_to use_types_url, notice: 'Use type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_type
      @use_type = UseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_type_params
      params.require(:use_type).permit(:name)
    end
end
