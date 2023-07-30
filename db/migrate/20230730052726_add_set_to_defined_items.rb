class AddSetToDefinedItems < ActiveRecord::Migration[7.0]
  def change
    add_column :defined_items, :set, :integer, default: 1
  end
end
