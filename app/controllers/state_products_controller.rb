class StateProductsController < ApplicationController
  before_action :set_state_product, only: [:show, :edit, :update, :destroy]

  # GET /state_products
  # GET /state_products.json
  def index
    @state_products = StateProduct.all
  end

  # GET /state_products/1
  # GET /state_products/1.json
  def show
  end

  # GET /state_products/new
  def new
    @state_product = StateProduct.new
  end

  # GET /state_products/1/edit
  def edit
  end

  # POST /state_products
  # POST /state_products.json
  def create
    @state_product = StateProduct.new(state_product_params)

    respond_to do |format|
      if @state_product.save
        format.html { redirect_to @state_product, notice: 'State product was successfully created.' }
        format.json { render :show, status: :created, location: @state_product }
      else
        format.html { render :new }
        format.json { render json: @state_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_products/1
  # PATCH/PUT /state_products/1.json
  def update
    respond_to do |format|
      if @state_product.update(state_product_params)
        format.html { redirect_to @state_product, notice: 'State product was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_product }
      else
        format.html { render :edit }
        format.json { render json: @state_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_products/1
  # DELETE /state_products/1.json
  def destroy
    @state_product.destroy
    respond_to do |format|
      format.html { redirect_to state_products_url, notice: 'State product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_product
      @state_product = StateProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_product_params
      params.require(:state_product).permit(:name)
    end
end
