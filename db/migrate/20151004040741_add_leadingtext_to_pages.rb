class AddLeadingtextToPages < ActiveRecord::Migration
  def change
    add_column :pages, :leading_text, :string
  end
end
