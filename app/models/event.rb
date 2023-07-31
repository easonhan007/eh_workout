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
  has_many :workout_records
  
  attr_accessor :config

  after_initialize do |event|
    event.name = gen_default_name
  end

  def gen_default_name
    hour = Time.now.strftime("%H").to_i
    return "Morning Workout" if hour.between?(5, 11)
    return "Noon Workout" if hour.eql?(12)
    return "Afternoon Workout" if hour.between?(13, 19)
    "Night Workout"
  end

end
