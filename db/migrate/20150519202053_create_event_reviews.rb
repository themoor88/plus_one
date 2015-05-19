class CreateEventReviews < ActiveRecord::Migration
  def change
    create_table :event_reviews do |t|
      t.text :comment
      t.integer :star_rating

      t.timestamps null: false
    end
  end
end
