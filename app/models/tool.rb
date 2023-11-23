class Tool < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :address, presence: true
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
