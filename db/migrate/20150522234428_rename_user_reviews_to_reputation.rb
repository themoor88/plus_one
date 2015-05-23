class RenameUserReviewsToReputation < ActiveRecord::Migration
  def change
    rename_table :user_reviews, :reputation
  end
end
