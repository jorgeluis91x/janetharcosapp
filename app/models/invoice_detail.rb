class InvoiceDetail < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :article
  belongs_to :state_product
  has_many :rental
end
