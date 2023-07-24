class CreateBodyParts < ActiveRecord::Migration[7.0]
  def change
    create_table :body_parts do |t|
      t.string :name

      t.timestamps
    end
  end
end
