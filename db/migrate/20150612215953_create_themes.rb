class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :themes, :title, unique: true
  end
end
