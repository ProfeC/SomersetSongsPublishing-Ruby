class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :moods, :title, unique: true
  end
end
