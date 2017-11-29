class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sozee
  validates :location, :starts_at, :ends_at, presence: true
end
