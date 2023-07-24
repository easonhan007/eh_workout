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
class DefinedItem < ApplicationRecord
  belongs_to :template
  belongs_to :exercise
end
