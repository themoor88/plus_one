class RsvpsController < ApplicationController

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  def create
    @rsvp = Rsvp.new
  end

  def new
  end

  private
  def rsvp_params

  end

end
