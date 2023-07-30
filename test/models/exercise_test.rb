# == Schema Information
#
# Table name: exercises
#
#  id           :integer          not null, primary key
#  name         :string
#  image        :string
#  category_id  :integer          not null
#  body_part_id :integer          not null
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  description  :text
#
require "test_helper"

class ExerciseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
