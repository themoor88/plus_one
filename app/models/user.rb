class User < ActiveRecord::Base
  authenticates_with_sorcery!
  geocoded_by :city
  before_validation :geocode

  geocoded_by :full_address
  after_validation :geocode
  mount_uploader :avatar, AvatarUploader

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

  def full_address
    [city, country].join(', ')
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def social_factor
  social = self.reputations.pluck(:introvertextrovert)
    if social != []
      (social.reduce(:+).to_f / social.size)
    else
    end
  end

  def positivenegative
    posneg = self.reputations.pluck(:positivenegative)
      if posneg != []
        (posneg.reduce(:+).to_f / posneg.size)
      else
      end
  end

  def pending_rsvps
    created_events.map(&:pending_rsvps).flatten
  end

  def unconfirmed_friendees
    friendees.where(confirmed: false)
  end

  def requests
    frienders.where(confirmed: false)
  end

  def confirmed_friends
    friendees.where(confirmed: true) + frienders.where(confirmed:true)
  end

end
