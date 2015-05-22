class RenameEventsUsersToRsvps < ActiveRecord::Migration
  def change
    rename_table :events_users, :rsvps
  end
end
