class AddSortToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :sort_order, :integer
  end
end
