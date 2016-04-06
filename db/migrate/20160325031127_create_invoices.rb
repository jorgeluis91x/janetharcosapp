class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :number
      t.date :date
      t.references :client, index: true, foreign_key: true
      t.string :observation
      t.integer :total
      t.boolean :null

      t.timestamps null: false
    end
  end
end
