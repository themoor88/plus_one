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


  # has_many :friendships
  # has_many :friends, :through => :friendships

  # has_many :pending_friends,
  #        :through => :friendships,
  #        :source => :friend,
  #        :conditions => "confirmed = 0"

  geocoded_by :full_address
  after_validation :geocode
  mount_uploader :avatar, AvatarUploader


  def full_address
    [city, country].join(', ')
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_friends
    friendees.length + frienders.length
  end

  def social_factor
  social = self.reputations.pluck(:introvertextrovert)
    if social != []
      (social.reduce(:+).to_f / social.size)
    else
    end

    ########## RANKED IMAGE FORMAT EXAMPLE FOR LATER IF NECESSARY ##########
    # intext = reputations.pluck(:introvertextrovert)
    # if intext != []
    #   average = (intext.reduce(:+) / intext.size)
    #     if (average >= -5 && average <= -3)
    #       return @user.avatar_url(:mobile)
    #     elsif (average >= -3 && average <= 0)
    #       return @user.avatar_url(:mobile)
    #     elsif (average >=0 && average <= 3)
    #       return @user.avatar_url(:mobile)
    #     elsif (average >=3 && average <=5)
    #       return @user.avatar_url(:mobile)
    #     else
    #       nil
    #     end
    # else
    #   return "fallback/profile-pic.png"
    # end


  end

  def positivenegative
    posneg = self.reputations.pluck(:positivenegative)
      if posneg != []
        (posneg.reduce(:+).to_f / posneg.size)
      else
      end
  end
end
