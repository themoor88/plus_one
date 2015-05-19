class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|
      t.integer :introvert
      t.integer :extrovert
      t.integer :positive
      t.integer :negative

      t.timestamps null: false
    end
  end
end
