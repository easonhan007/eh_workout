class AddDistanceToWorkoutRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :workout_records, :distance, :integer
  end
end
