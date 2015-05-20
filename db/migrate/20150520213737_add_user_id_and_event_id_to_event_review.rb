class AddUserIdAndEventIdToEventReview < ActiveRecord::Migration
  def change
    add_column :event_reviews, :user_id, :integer
    add_column :event_reviews, :event_id, :integer
  end
end
