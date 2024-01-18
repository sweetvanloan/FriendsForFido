class Playdate < ApplicationRecord
  belongs_to :admin, class_name: 'User', foreign_key: 'admin_id'
  has_many :invitations, class_name: 'PlaydateInvitation'

  validates :name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true

  scope :public_playdates, -> { where(is_private: false) }
end
