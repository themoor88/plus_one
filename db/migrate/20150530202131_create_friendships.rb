class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.boolean :confirmed, default: false
      t.integer :friendee_id
      t.integer :friender_id

      t.timestamps null: false
    end
  end
end
