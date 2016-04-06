class Movement < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :movement_type
end
