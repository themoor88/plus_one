class PagesController < ApplicationController
  skip_before_filter :require_login
  def home
    @allevents = Event.all
    # @nearby_events = Event.all.nearbys(4, units: :km)
  end
end
