class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]



#//////////
# POST /total_invoices
  # POST /total_invoices.json
  def createtotalinvoice
    @total_invoice = TotalInvoice.new(total_invoice_params)

    respond_to do |format|
      if @total_invoice.save
        @number = @total_invoice.number
       # format.html { redirect_to new_entry_path, total_invoice_id: @total_invoice.id }
        #format.json { render :show, status: :created, location: @total_invoice }
        #format.js   { render action: 'entries/show', status: :created, location: @total_invoice }
      else
        format.html { render :new }
        format.json { render json: @total_invoice.errors, status: :unprocessable_entity }
        format.js   { render json: @total_invoice.errors, status: :unprocessable_entity }
      end
    end
  end
#/////////////////////////////

  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all

  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
    # GET /total_invoices/new
    @total_invoice = TotalInvoice.new

    @total_invoices = TotalInvoice.all
     #@total_invoices = TotalInvoice.all.paginate(page: params[:page], per_page: 2)

 
  end

  def getTotalInvoice

     #@total_invoices = TotalInvoice.all.paginate(page: params[:page], per_page: 2)
    @total_invoice = TotalInvoice.find_by number: params[:number]
    #respond_with @total_invoice
    #  respond_to do |format|
      
        #format.json { render json: @total_invoice }
    
    #end
    render json: @total_invoice

 
  end

  # GET /entries/1/edit
  def edit
    @total_invoice = TotalInvoice.find(@entry.total_invoice)
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:total_invoice_id, :entry_date, :entry_type_id, :observation, :payment_type, :deposit)
    end

#creado por jorge para crear una factura
    def total_invoice_params
      params.require(:total_invoice).permit(:number, :total_value)
    end
end
