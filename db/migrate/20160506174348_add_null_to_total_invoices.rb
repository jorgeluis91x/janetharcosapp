class AddNullToTotalInvoices < ActiveRecord::Migration
  def change
    add_column :total_invoices, :null, :boolean
  end
end
