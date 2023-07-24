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
class Template < ApplicationRecord
  has_many :defined_items
  has_many :exercises, through: :defined_items
  belongs_to :user

  validates :name, presence: true
end
