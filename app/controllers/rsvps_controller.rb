class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    @event = Event.find(params[:event_id])
    @rsvp.user = current_user
    @rsvp.status = "Pending"

    if @rsvp.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:status)
  end

end
