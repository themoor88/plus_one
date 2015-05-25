class PagesController < ApplicationController
  skip_before_filter :require_login
  def home
    @user = current_user
    @nearby_events = Event.near([current_user.latitude, current_user.longitude], 5000)
    @nearby_users = @user.nearbys(5000)
  end
end