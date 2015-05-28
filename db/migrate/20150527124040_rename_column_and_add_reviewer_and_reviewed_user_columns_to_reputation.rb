class RenameColumnAndAddReviewerAndReviewedUserColumnsToReputation < ActiveRecord::Migration
  def change
    rename_column :reputations, :user_id, :reviewer_id
    add_column :reputations, :reviewed_user_id, :integer
  end
end
