class User < ActiveRecord::Base
  authenticates_with_sorcery!
  geocoded_by :city
  before_validation :geocode

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 8}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  has_many :rsvps

  has_many :created_events, class_name: "Event"
  has_many :reviews
  has_many :reputations, foreign_key: :reviewed_user_id
  has_many :created_reputations, foreign_key: :reviewer_id, class_name: "Reputation"

  has_many :friendees, :foreign_key => "friender_id", :class_name => "Friendship"
  has_many :frienders, :foreign_key => "friendee_id", :class_name => "Friendship"

  def ip_address
    [longitude, latitude].join(', ')
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
