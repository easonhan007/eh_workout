class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @templates = Template.sys_and(current_user).by_created.limit(9)
  end

  def workout
    @template = Template.sys_and(current_user).find(params[:template_id])

    @event = Event.new(template_id: @template.id, user_id: current_user.id)
    @event.save!()
    @event.config = []

    @template.exercises.each do |ex|
      config_item = {}
      config_item[:id] = ex.id
      config_item[:name] = ex.name
      config_item[:records] = []
      DefinedItem.by_exercise(ex).by_template(@template).first.set.times do 
        config_item[:records].push(ex.record_kls.new(
          user_id: current_user.id, 
          event_id: @event.id, 
          exercise_id: ex.id
        ))
      end #times
      @event.config.push(config_item)
    end #each
  end #def

end
