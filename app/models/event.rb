class Event < ActiveRecord::Base
  has_many :rsvps
  has_many :users, through: :rsvps

  belongs_to :creator, class_name: User
  has_many :reviews

  validates :event_name, :address_1, :city, :country, :number_of_attendees, :time, :description, :category, presence: true
  validates :event_name, length: { minimum: 2,
    too_short: "%{count} characters are the minimum allowed." }
  validates :event_name, length: { maximum: 255,
    too_long: "%{count} characters are the maximum allowed." }

  geocoded_by :full_street_address
  before_save :geocode # Forces update if any attributes have changed (should avoid uneccessary work / requests)

  ###ADD USER IP LOCATION: https://github.com/alexreisner/geocoder#request-geocoding-by-ip-address

  def full_street_address #Take all location fields, remove nil elements with .compact, then return a string for Geocoder
    [address_1, address_2, city, country, z_post_code].compact.join(', ')
  end
end
