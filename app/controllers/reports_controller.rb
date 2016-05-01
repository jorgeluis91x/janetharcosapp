class ReportsController < ApplicationController

	def index
		
		@entries = Entry.where entry_date: Date.today
		@departures = Departure.where entry_date: Date.today

	end
end
