class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :items, :quantity, :string
    add_column :items, :product_id, :integer
    add_column :items, :color_id, :integer
    add_column :items, :size_id, :integer
  end
end
