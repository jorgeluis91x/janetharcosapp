class Entry < ActiveRecord::Base
  belongs_to :total_invoice
  belongs_to :entry_type
end
