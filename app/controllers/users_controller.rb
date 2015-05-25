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
    @reputation = Reputation.new(params[:user_id])
    # @event = Event.find(user_id: current_user.id)
    city = request.location.city
    country = request.location.country_code
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to(:root, notice: 'User was successfully created')
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
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
