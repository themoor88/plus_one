class RenameEventReviewsToReviews < ActiveRecord::Migration
  def change
    rename_table :event_reviews, :reviews
  end
end
