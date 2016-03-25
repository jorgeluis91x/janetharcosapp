class Article < ActiveRecord::Base
  belongs_to :product_category
  belongs_to :provider
end
