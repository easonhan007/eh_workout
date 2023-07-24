# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  template_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :template
end
