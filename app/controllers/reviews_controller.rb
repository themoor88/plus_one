class ReviewsController < ApplicationController
  skip_before_filter :require_login, only: [:show]
  def show
    @review = Review.find(params[:event_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to event, notice: "Thanks for your review" }
        format.js {}
      else
        format.html { render 'events/show', alert: 'There was an error.'}
        format.js {}
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment, :star_rating)
  end
end
