class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :address
      t.string :email
      t.string :location
      t.string :name
      t.string :phone
      t.string :url

      t.timestamps null: false
    end
  end
end
