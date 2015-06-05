class RsvpsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @rsvp = @event.rsvps.new(user: current_user, status: "Pending", message: params[:rsvp][:message])

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

  def accept
    @rsvp = Event.find(params[:event_id]).rsvps.find(params[:id])
    @rsvp.status = "Accepted"
    if @rsvp.save
      redirect_to root_path
    else
      raise "I'm scared"
    end
  end

  def decline
    @rsvp = Rsvp.find(params[:id])
    @event = Event.find(params[:event_id])
    @rsvp.status = "Declined"
  end

  def index
    @rsvps = Rsvp.where(user_id: current_user.id)
  end

  # private
  # def rsvp_params
  #   params.require(:rsvp).permit(:message)
  # end
end

# @pm = ParentModel.find(params[:pm_id])
# @model1 = Model1.new(:parent_model_id => @pm.id)
# @pm = ParentModel.find(params[:pm_id])
# @model1 = @pm.model1s.build

