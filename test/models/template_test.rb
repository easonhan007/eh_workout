# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class TemplateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
