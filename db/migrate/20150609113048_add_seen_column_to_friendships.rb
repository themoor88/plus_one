class AddSeenColumnToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :seen, :boolean, default: false
  end
end
