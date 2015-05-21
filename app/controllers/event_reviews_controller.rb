class EventReviewsController < ApplicationController

  def show
    @event_review = EventReview.find(params[:event_id])
  end

  def create
    event = Event.find(params[:event_id])
    @event_review = event.event_reviews.build(review_params)
    @event_review.user_id = current_user.id

    respond_to do |format|
      if @event_review.save
        format.html { redirect_to event, notice: "Thanks for your review" }
        format.js {}
      else
        format.html { render 'events/show', alert: 'There was an error.'}
        format.js {}
      end
    end
  end

  def destroy
    @event_review = EventReview.find(params[:id])
    @event_review.destroy
  end

  private

  def review_params
    params.require(:event_review).permit(:comment, :star_rating)
  end
end
