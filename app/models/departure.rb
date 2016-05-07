class Departure < ActiveRecord::Base
  belongs_to :departure_type
  validates :total_value, presence: true
end
