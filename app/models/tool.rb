class Tool < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :address, presence: true
  validates :price, presence: true
end
