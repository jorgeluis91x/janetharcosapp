class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end
