class Event < ActiveRecord::Base
  validates :event_name, :address_1, :city, :country, :number_of_attendees, :time, :description, :category, presence: true
  validates :event_name, exclusion: { in: %w(www us ca jp), #The exclusion helper has an option :in that receives the set of values that will not be accepted for the validated attributes.
    message: "%{value} is reserved." }
   validates :event_name, length: { minimum: 2 }
   validates :event_name, length: { maximum: 255 }
end
