class Entry < ActiveRecord::Base
  belongs_to :total_invoice
  belongs_to :entry_type
  validates :total_invoice_id, presence: true
  validates :deposit, presence: true
end
