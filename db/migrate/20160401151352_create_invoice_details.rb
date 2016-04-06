class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.references :invoice, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true
      t.integer :quantity
      t.integer :unit_value
      t.references :state_product, index: true, foreign_key: true
      t.string :observation

      t.timestamps null: false
    end
  end
end
