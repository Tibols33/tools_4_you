class User < ApplicationRecord
  has_many :bookings
  has_many :tools
  has_many :booked_tools, through: :bookings, source: :tool
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
