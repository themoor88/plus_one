class RsvpsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @rsvp = @event.rsvps.build
    @rsvp.user = current_user
    @rsvp.status = "Pending"

    if @rsvp.save
      redirect_to root_url
    else
      render '/events/new'
    end
  end

end
