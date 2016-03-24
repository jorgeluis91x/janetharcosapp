class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :identification
      t.string :name
      t.string :direction
      t.string :phone
      t.string :email
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
