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
class Exercise < ApplicationRecord
  has_many :defined_items
  has_many :workout_records, dependent: :destroy

  belongs_to :category
  belongs_to :body_part
  belongs_to :user

  validates :name, presence: true, uniqueness: true

  scope :sys_and, ->(user) { where(user_id: 1).or(Exercise.where(user_id: user.id)) }
  scope :by_created, ->{order('created_at DESC')}

  def record_kls
    record_kls = category.record_kls.to_sym
    Rails.const_get(record_kls)
  end

end
