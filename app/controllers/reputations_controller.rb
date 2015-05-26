class ReputationsController < ApplicationController

  def new
    @reputation = Reputation.new
  end

  def show
    @reputation = Reputation.find(params[:id])
  end


  def create
    @reputation = Reputation.new(reputation_params)
    @user = User.find(params[:user_id])
    @reputation.user = current_user

    if @reputation.save
      redirect_to @user, notice: "Review created successfully."
    else
      render '/users/show'
    end

  end

  def destroy
    @reputation = Reputation.find(params[:id])
    @reputation.destroy
  end

  private
  def reputation_params
    params.require(:reputation).permit(:introvert, :extrovert, :positive, :negative)
  end
end
