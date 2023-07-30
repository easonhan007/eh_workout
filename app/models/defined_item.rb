# == Schema Information
#
# Table name: defined_items
#
#  id          :integer          not null, primary key
#  template_id :integer          not null
#  exercise_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  set         :integer          default(1)
#
class DefinedItem < ApplicationRecord
  belongs_to :template
  belongs_to :exercise

  scope :by_exercise, ->(exec) {where(exercise_id: exec.id)}
  scope :by_template, ->(temp) {where(template_id: temp.id)}

end
