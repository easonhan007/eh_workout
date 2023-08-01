# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  template_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
