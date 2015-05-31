class RemoveEventIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :event_id, :integer
  end
end
