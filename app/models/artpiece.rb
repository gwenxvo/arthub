class Artpiece < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :day_price, presence: true
end
