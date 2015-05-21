class RSVP < ActiveRecord::Base
  self.table_name = "events_users"
  belongs_to :event
  belongs_to :user

  # TODO: Make a migration to add a status field (string)


end