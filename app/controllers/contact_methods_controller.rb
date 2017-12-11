class ContactMethodsController < ApplicationController
  before_action :set_contact_method, only: [:show, :edit, :update, :destroy]

  # GET /contact_methods
  # GET /contact_methods.json
  def index
    @contact_methods = ContactMethod.all
    respond_to do |format|
      format.html
      format.csv { render text: @contact_methods.to_csv }
      format.xls { send_data @contact_methods.to_csv(col_sep: "\t") }
    end
  end

  # GET /contact_methods/1
  # GET /contact_methods/1.json
  def show
  end

  # GET /contact_methods/new
  def new
    @contact_method = ContactMethod.new
  end

  # GET /contact_methods/1/edit
  def edit
  end

  # POST /contact_methods
  # POST /contact_methods.json
  def create
    @contact_method = ContactMethod.new(contact_method_params)

    respond_to do |format|
      if @contact_method.save
        format.html { redirect_to @contact_method, notice: 'Contact method was successfully created.' }
        format.json { render :show, status: :created, location: @contact_method }
      else
        format.html { render :new }
        format.json { render json: @contact_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_methods/1
  # PATCH/PUT /contact_methods/1.json
  def update
    respond_to do |format|
      if @contact_method.update(contact_method_params)
        format.html { redirect_to @contact_method, notice: 'Contact method was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_method }
      else
        format.html { render :edit }
        format.json { render json: @contact_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_methods/1
  # DELETE /contact_methods/1.json
  def destroy
    @contact_method.destroy
    respond_to do |format|
      format.html { redirect_to contact_methods_url, notice: 'Contact method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_method
      @contact_method = ContactMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_method_params
      params.require(:contact_method).permit(:name)
    end
end
