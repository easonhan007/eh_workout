class CreateDefinedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :defined_items do |t|
      t.references :template, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
