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
require "test_helper"

class DurationRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
