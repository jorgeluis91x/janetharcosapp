class ProductCategory < ActiveRecord::Base
	has_many :article
end
