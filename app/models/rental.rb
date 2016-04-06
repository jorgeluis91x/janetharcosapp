class Rental < ActiveRecord::Base
  belongs_to :invoice_detail
end
