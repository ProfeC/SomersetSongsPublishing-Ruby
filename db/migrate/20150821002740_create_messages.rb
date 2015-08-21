class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :project
      t.text :description
      t.string :name
      t.string :email_address
      t.boolean :listen_online
      t.boolean :send_suggestions

      t.timestamps null: false
    end
  end
end
