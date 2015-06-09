class AddSeenColumnToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :seen, :boolean, default: false
  end
end
