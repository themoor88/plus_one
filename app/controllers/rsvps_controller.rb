class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(params[:id])
    @event = Event.find(params[:event_id])
    @rsvp.user = current_user
    @rsvp.status = "Pending"
    @rsvp.event_id = @event.id

    if @rsvp.save
      redirect_to root_url
    else
      render 'new'
    end
  end

end
