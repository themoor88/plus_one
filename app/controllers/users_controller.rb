class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @reputation = @user.reputations.build
    city = request.location.city
    country = request.location.country_code

    # @user = current_user
    if current_user
      @nearby_events = Event.near([current_user.latitude, current_user.longitude], 5000)
      @nearby_users = @user.nearbys(5000)
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to(:root, notice: 'Thank you for signing up!')
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def user_location
    userlocation = request.location
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :avatar, :city, :country)
  end
end
