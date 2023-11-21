class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: %w(confirmed refused waiting for validation)}
end
