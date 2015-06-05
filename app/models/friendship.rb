class Friendship < ActiveRecord::Base
  # belongs_to :user
  # belongs_to :friend, :class_name => 'User'

  belongs_to :friended_user, class_name: "User", foreign_key: :friendee__id
  belongs_to :friender, class_name: "User", foreign_key: :friender_id
end
