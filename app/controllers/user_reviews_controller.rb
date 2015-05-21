class UserReviewsController < ApplicationController
  before_filter :load_user
  def show
    @user_review = User_review.find(params[:id])
  end

  def create
    @user_review.user_id = current_user.id
    @user_review = @user.user_reviews.build(review_params)

    if @user_review.save
      redirect_to @user, notice: "Review created successfully."
    else
      render @user
    end

  end

  def destroy
    @user_review = User_review.find(params[:id])
    @user_review.destroy
  end

  private
  def review_params
    params.require(:user_review).permit(:introvert, :extrovert, :positive, :negative)
  end

  def load_user
    @user = User.find(params[:user_id])
  end
end
