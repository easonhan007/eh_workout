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
#
class Exercise < ApplicationRecord
  has_many :defined_items
  belongs_to :category
  belongs_to :body_part
  belongs_to :user
  delegate :record_kls, to: :category

  validates :name, presence: true, uniqueness: true
  

  def record_kls
    Rails.const_get(record_kls.to_sym)
  end

end
