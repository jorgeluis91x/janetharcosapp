class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.references :invoice_detail, index: true, foreign_key: true
      t.date :start_date
      t.date :final_date
      t.integer :deposit
      t.integer :state
      t.string :observation

      t.timestamps null: false
    end
  end
end
