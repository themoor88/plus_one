class ReputationsController < ApplicationController
  before_filter :load_user

  def new
    @reputation = Reputation.new
  end

  def show
    @reputation = Reputation.find(params[:id])
  end


  def create
    user = User.find(params[:user_id])
    @reputation = @user.reputations.build(reputation_params)
    @reputation.user_id = current_user.id

    if @reputation.save
      redirect_to @user, notice: "Review created successfully."
    else
      render 'root'
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

  def load_user
    @user = User.find(params[:user_id])
  end
end
