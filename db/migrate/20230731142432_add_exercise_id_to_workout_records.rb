class AddExerciseIdToWorkoutRecords < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_records, :exercise, null: false, foreign_key: true
  end
end
