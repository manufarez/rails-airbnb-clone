class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sozee
  validates :location, :day, :start_time, :end_time, presence: true
end
