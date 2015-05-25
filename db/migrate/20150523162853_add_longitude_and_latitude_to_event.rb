class AddLongitudeAndLatitudeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :longitude, :decimal, precision: 9, scale: 6
    add_column :events, :latitude, :decimal, precision: 9, scale: 6
  end
end
