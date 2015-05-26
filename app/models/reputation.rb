class Reputation < ActiveRecord::Base
  belongs_to :reviewed_user, class_name: "User"
  belongs_to :reviewer, class_name: "User"
end
