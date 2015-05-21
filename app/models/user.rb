class User < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_many :event_reviews
  has_many :user_reviews

  authenticates_with_sorcery!

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
