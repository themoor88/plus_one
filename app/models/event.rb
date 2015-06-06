class Event < ActiveRecord::Base
  belongs_to :user
  has_many :rsvps

  has_many :reviews

  validates :event_name, :address_1, :city, :number_of_attendees, :description, presence: true
  validates :event_name, length: { minimum: 5,
    too_short: "%{count} characters are the minimum allowed." }
  validates :event_name, length: { maximum: 30,
    too_long: "%{count} characters are the maximum allowed." }

  geocoded_by :full_street_address
  before_save :geocode # Forces update if any attributes have changed (should avoid uneccessary work / requests)
  mount_uploader :image, ImageUploader

  ###ADD USER IP LOCATION: https://github.com/alexreisner/geocoder#request-geocoding-by-ip-address

  def full_street_address #Take all location fields, remove nil elements with .compact, then return a string for Geocoder
    [address_1, address_2, city, country, z_post_code].compact.join(', ')
  end

  def method_names
    methods = ["event_name", "address_1", "address_2", "city", "country", "z_post_code" ]
    methods.map do |method|
      self.send(method)
    end
  end

  def random_event
    self.Event.order("RANDOM()").first
  end

  def pending_rsvps
    rsvps.where(status: "Pending")
  end
end