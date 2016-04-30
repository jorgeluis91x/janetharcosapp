class CreateTotalInvoices < ActiveRecord::Migration
  def change
    create_table :total_invoices do |t|
      t.integer :number
      t.integer :total_value

      t.timestamps null: false
    end
  end
end
