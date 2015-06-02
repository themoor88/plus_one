class ReputationsController < ApplicationController

  def create
    @reputation = Reputation.new(reputation_params)
    @user = User.find(params[:user_id])
    @reputation.reviewer = current_user
    @reputation.reviewed_user = @user

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
    params.require(:reputation).permit(:introvertextrovert, :positivenegative)
  end
end
