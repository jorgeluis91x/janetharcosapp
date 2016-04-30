class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :total_invoice, index: true, foreign_key: true
      t.date :entry_date
      t.references :entry_type, index: true, foreign_key: true
      t.string :observation
      t.integer :payment_type
      t.integer :deposit

      t.timestamps null: false
    end
  end
end
