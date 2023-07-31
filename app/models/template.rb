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
  has_many :defined_items, dependent: :destroy
  accepts_nested_attributes_for :defined_items
  has_many :exercises, through: :defined_items
  belongs_to :user

  validates :name, presence: true
  validate :should_at_least_have_one_defined_item

  scope :system, -> { where(user_id: 1) }
  scope :by_created, -> {order('created_at DESC')}
  scope :sys_and, ->(user) { where(user_id: 1).or(Template.where(user_id: user.id)) }


  private
    def should_at_least_have_one_defined_item
      count = defined_items.try(:size) || 0
      if count.eql?(0)
        errors.add(:template, 'should have at least one exercise')
      end #if
    end

end
