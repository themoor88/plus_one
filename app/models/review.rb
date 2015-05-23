class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  # validates :user_id, :uniqueness => { :scope => :event_id,
  #   :message => "Users may only write one review per event." }
end
