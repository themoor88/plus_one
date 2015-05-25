class User < ActiveRecord::Base
  has_many :rsvps
  has_many :joined_events, class_name: "Event", through: :rsvps

  has_many :created_events, class_name: "Event"
  has_many :reviews
  has_many :reputations

  authenticates_with_sorcery!

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
