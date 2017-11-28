class Sozee < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
