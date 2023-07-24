# == Schema Information
#
# Table name: workout_records
#
#  id         :integer          not null, primary key
#  reps       :integer
#  weight     :integer
#  duration   :integer
#  type       :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  distance   :integer
#
class WorkoutRecord < ApplicationRecord
  belongs_to :user

  def reps_should_greater_than_zero
		if reps <= 0
			errors.add(:reps, "reps should be greater than 0")
		end #if
  end

  def duration_should_greater_than_zero
		if duration <= 0
			errors.add(:duration, "duration should be greater than 0")
		end #if
  end

  def weight_should_greater_than_zero
		if weight <= 0
			errors.add(:weight, "weight should be greater than 0")
		end #if
  end

  def distance_should_greater_than_zero
		if distance <= 0
			errors.add(:distance, "distance should be greater than 0")
		end #if
  end

end
