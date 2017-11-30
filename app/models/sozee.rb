class Sozee < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :sozee_of, :sozee_name, :category, :photo, :price_per_hour, presence: true
end
