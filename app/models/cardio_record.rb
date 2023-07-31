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
class CardioRecord < WorkoutRecord
	validates :duration, :distance, presence: true
	validate :duration_should_greater_than_zero, :distance_should_greater_than_zero
end
