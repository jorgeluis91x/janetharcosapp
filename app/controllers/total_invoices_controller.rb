class TotalInvoicesController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :set_total_invoice, only: [:show, :edit, :update, :destroy]

  # GET /total_invoices
  # GET /total_invoices.json
  def index
    @total_invoices = TotalInvoice.all.paginate(page: params[:page], per_page: 20)
    @total_invoices = TotalInvoice.search(params[:number]).paginate(page: params[:page], per_page: 20) if params[:number].present?
  end

  # GET /total_invoices/1
  # GET /total_invoices/1.json
  def show
  end

  # GET /total_invoices/new
  def new
    @total_invoice = TotalInvoice.new
  end

  # GET /total_invoices/1/edit
  def edit
  end

  # POST /total_invoices
  # POST /total_invoices.json
  def create
    @total_invoice = TotalInvoice.new(total_invoice_params)

    respond_to do |format|
      if @total_invoice.save
        format.html { redirect_to new_entry_path, total_invoice_id: @total_invoice.id }
        format.json { render :show, status: :created, location: @total_invoice }
        format.js   { render action: 'entries/show', status: :created, location: @total_invoice }
      else
        format.html { render :new }
        format.json { render json: @total_invoice.errors, status: :unprocessable_entity }
        format.js   { render json: @total_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /total_invoices/1
  # PATCH/PUT /total_invoices/1.json
  def update
    respond_to do |format|
      if @total_invoice.update(total_invoice_params)
        format.html { redirect_to @total_invoice, notice: 'Total invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @total_invoice }
      else
        format.html { render :edit }
        format.json { render json: @total_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /total_invoices/1
  # DELETE /total_invoices/1.json
  def destroy
    @total_invoice.destroy
    respond_to do |format|
      format.html { redirect_to total_invoices_url, notice: 'Total invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_total_invoice
      @total_invoice = TotalInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def total_invoice_params
      params.require(:total_invoice).permit(:number, :total_value)
    end
end
