# == Schema Information
#
# Table name: workout_records
#
#  id          :integer          not null, primary key
#  reps        :integer
#  weight      :integer
#  duration    :integer
#  type        :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  distance    :integer
#  event_id    :integer          not null
#  exercise_id :integer          not null
#
class WorkoutRecord < ApplicationRecord
  belongs_to :user
  belongs_to :event
	belongs_to :exercise

  def reps_should_greater_than_zero
		if reps and reps <= 0
			errors.add(:reps, "reps should be greater than 0")
		end #if
  end

  def duration_should_greater_than_zero
		if duration and duration <= 0
			errors.add(:duration, "duration should be greater than 0")
		end #if
  end

  def weight_should_greater_than_zero
		if weight and weight <= 0
			errors.add(:weight, "weight should be greater than 0")
		end #if
  end

  def distance_should_greater_than_zero
		if distance and distance <= 0
			errors.add(:distance, "distance should be greater than 0")
		end #if
  end

end
