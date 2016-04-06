class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.references :invoice, index: true, foreign_key: true
      t.date :date
      t.integer :sum
      t.references :movement_type, index: true, foreign_key: true
      t.string :observation

      t.timestamps null: false
    end
  end
end
