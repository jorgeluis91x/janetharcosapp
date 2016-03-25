class AddInitialToProductCategories < ActiveRecord::Migration
  def change
    add_column :product_categories, :initial, :string
  end
end
