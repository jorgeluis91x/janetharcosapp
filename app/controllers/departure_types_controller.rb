class DepartureTypesController < ApplicationController
  before_action :set_departure_type, only: [:show, :edit, :update, :destroy]

  # GET /departure_types
  # GET /departure_types.json
  def index
    @departure_types = DepartureType.all
  end

  # GET /departure_types/1
  # GET /departure_types/1.json
  def show
  end

  # GET /departure_types/new
  def new
    @departure_type = DepartureType.new
  end

  # GET /departure_types/1/edit
  def edit
  end

  # POST /departure_types
  # POST /departure_types.json
  def create
    @departure_type = DepartureType.new(departure_type_params)

    respond_to do |format|
      if @departure_type.save
        format.html { redirect_to @departure_type, notice: 'Departure type was successfully created.' }
        format.json { render :show, status: :created, location: @departure_type }
      else
        format.html { render :new }
        format.json { render json: @departure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departure_types/1
  # PATCH/PUT /departure_types/1.json
  def update
    respond_to do |format|
      if @departure_type.update(departure_type_params)
        format.html { redirect_to @departure_type, notice: 'Departure type was successfully updated.' }
        format.json { render :show, status: :ok, location: @departure_type }
      else
        format.html { render :edit }
        format.json { render json: @departure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departure_types/1
  # DELETE /departure_types/1.json
  def destroy
    @departure_type.destroy
    respond_to do |format|
      format.html { redirect_to departure_types_url, notice: 'Departure type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departure_type
      @departure_type = DepartureType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departure_type_params
      params.require(:departure_type).permit(:name)
    end
end
