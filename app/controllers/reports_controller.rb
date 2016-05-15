class ReportsController < ApplicationController

	def index
		
		@entries = Entry.where entry_date: Date.today
		@departures = Departure.where entry_date: Date.today

		@entries = Entry.where entry_date: params[:fecha]  if params[:fecha].present?
		@departures = Departure.where entry_date: params[:fecha]  if params[:fecha].present?


	end

	def debitSearch

		#me trae la suma de el deposito
		params[:status] 
		sumadeposito = Entry.includes(:total_invoice).where("number = 723").sum(:deposit)
		total_factura = TotalInvoice.where(number: 723).pluck(:total_value)
		@debit = total_factura.first - sumadeposito

	end
end
