class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :reference
      t.references :product_category, index: true, foreign_key: true
      t.string :detail
      t.integer :quantity
      t.string :size
      t.references :provider, index: true, foreign_key: true
      t.integer :purchase_value
      t.integer :sales_value
      t.integer :rental_value
      t.integer :status

      t.timestamps null: false
    end
  end
end
