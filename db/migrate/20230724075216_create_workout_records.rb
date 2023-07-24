class CreateWorkoutRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_records do |t|
      t.integer :reps
      t.integer :weight
      t.integer :duration
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
