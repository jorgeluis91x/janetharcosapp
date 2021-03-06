class TotalInvoice < ActiveRecord::Base
	has_many :entry
	scope :search, -> (number) { where number: number }
	validates :number, presence: true
end
