class User < ActiveRecord::Base
  has_and_belongs_to_many :events
  authenticates_with_sorcery!

  validates :password, length: {minimum: 3}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
