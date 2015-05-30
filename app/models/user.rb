class User < ActiveRecord::Base
  has_many :rsvps
  has_many :joined_events, class_name: "Event", through: :rsvps

  has_many :created_events, class_name: "Event"
  has_many :reviews
  has_many :reputations, foreign_key: :reviewed_user_id
  has_many :created_reputations, foreign_key: :reviewer_id, class_name: "Reputation"


  authenticates_with_sorcery!

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  geocoded_by :full_address
  after_validation :geocode
  mount_uploader :avatar, AvatarUploader

  def full_address
    [city, country].join(', ')
  end
end
