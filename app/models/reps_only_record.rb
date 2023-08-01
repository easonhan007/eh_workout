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
class RepsOnlyRecord < WorkoutRecord
	validates :reps, presence: true
	validate :reps_should_greater_than_zero
end
