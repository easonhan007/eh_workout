class AddEventIdToWorkoutRecords < ActiveRecord::Migration[7.0]
  def change
    add_reference :workout_records, :event, null: false, foreign_key: true
  end
end
