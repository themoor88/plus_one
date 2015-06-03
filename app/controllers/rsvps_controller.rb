class RsvpsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @rsvp = @event.rsvps.build
    @rsvp.user = current_user
    @rsvp.status = "Pending"

    if @rsvp.save
      redirect_to @event
    else
      render '/events/new'
    end
  end

  def update
  end
end

# @pm = ParentModel.find(params[:pm_id])
# @model1 = Model1.new(:parent_model_id => @pm.id)
# @pm = ParentModel.find(params[:pm_id])
# @model1 = @pm.model1s.build

