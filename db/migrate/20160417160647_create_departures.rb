class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.date :entry_date
      t.references :departure_type, index: true, foreign_key: true
      t.string :detail
      t.integer :total_value

      t.timestamps null: false
    end
  end
end
