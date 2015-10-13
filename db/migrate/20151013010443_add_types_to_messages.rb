class AddTypesToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :types, :string, array: true, :default => []
  end
end
