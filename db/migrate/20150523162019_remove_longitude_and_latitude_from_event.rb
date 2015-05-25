class RemoveLongitudeAndLatitudeFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :latitude, :bigdecimal
    remove_column :events, :longitude, :bigdecimal
  end
end
