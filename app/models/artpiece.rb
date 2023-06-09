class Artpiece < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :ratings, dependent: :destroy

  validates :title, :description, :day_price, presence: true

  geocoded_by :address

  def book_validation(date)
    bookings.where("start_date <= ? and end_date >= ?", date.last, date.first).exists?
  end

  def booked?(date)
    bookings.any? do |booking|
      (booking.start_date..booking.end_date).cover?(date)
    end
  end

  include AlgoliaSearch

  algoliasearch do
    attribute :title, :artist, :description
  end
end
