class AddDescriptionToExercise < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :description, :text
  end
end
