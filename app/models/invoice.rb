class Invoice < ActiveRecord::Base
  belongs_to :client
  has_many :invoice_detail
  has_many :movement
end
