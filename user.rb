class User < ApplicationRecord
  # Devise authentication and registration code

  # Location information
  validates :country, presence: true
  validates :state_province, presence: true
  validates :city, presence: true

  # Relationships
  has_many :posts
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :playdates
  has_many :invitations, class_name: 'PlaydateInvitation'

  # Dark mode preference
  validates :dark_mode_enabled, inclusion: { in: [true, false] }
end
