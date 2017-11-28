class Sozee < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :sozee_name, uniqueness: true, presence: true
  validates :category, presence: true
  validates :price_per_hour, presence: true
end
