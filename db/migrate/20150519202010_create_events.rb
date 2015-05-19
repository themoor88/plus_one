class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :country
      t.string :z_post_code
      t.decimal :latitude
      t.decimal :longitude
      t.integer :number_of_attendees
      t.datetime :time
      t.text :description
      t.integer :cost
      t.string :image
      t.string :category

      t.timestamps null: false
    end
  end
end
