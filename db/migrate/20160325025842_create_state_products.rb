class CreateStateProducts < ActiveRecord::Migration
  def change
    create_table :state_products do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
