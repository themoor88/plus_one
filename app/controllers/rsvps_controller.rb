class RsvpsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @rsvp = @event.rsvps.build
    @rsvp.user = current_user
    @rsvp.status = "Pending"

    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to @event, notice: "Your request has been sent." }
        format.js {}
      else
        format.html { render 'events/show', alert: 'There was an error.'}
        format.js {}
      end
    end
  end

  def update

  end
end

# @pm = ParentModel.find(params[:pm_id])
# @model1 = Model1.new(:parent_model_id => @pm.id)
# @pm = ParentModel.find(params[:pm_id])
# @model1 = @pm.model1s.build

