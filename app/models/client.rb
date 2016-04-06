class Client < ActiveRecord::Base
	validates :identification, presence: true
  	validates :name, presence: true
	has_many :invoice
	
end
