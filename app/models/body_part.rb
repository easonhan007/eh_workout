# == Schema Information
#
# Table name: body_parts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BodyPart < ApplicationRecord
	validates :name, presence: true, uniqueness: true
end
