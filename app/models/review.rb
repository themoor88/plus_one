class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :comment, presence: true
  validates :comment, length: {minimum: 20}
  validates :star_rating, presence: true
end
