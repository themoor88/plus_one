class Reputation < ActiveRecord::Base
  belongs_to :reviewed_user, class_name: "User", foreign_key: :reviewed_user_id
  belongs_to :reviewer, class_name: "User", foreign_key: :reviewer_id
end
