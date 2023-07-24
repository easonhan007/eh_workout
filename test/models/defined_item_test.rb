# == Schema Information
#
# Table name: defined_items
#
#  id          :integer          not null, primary key
#  template_id :integer          not null
#  exercise_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class DefinedItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
