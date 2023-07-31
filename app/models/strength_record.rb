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
#  event_id   :integer          not null
#
class StrengthRecord < WorkoutRecord
	validates :weight, :reps, presence: true
	validate :weight_should_greater_than_zero, :reps_should_greater_than_zero
end
