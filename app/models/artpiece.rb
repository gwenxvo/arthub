class Artpiece < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  has_many :ratings, dependent: :destroy

  validates :title, :description, :day_price, :photos, presence: true

  def book_validation(date)
    bookings.where("start_date <= ? and end_date >= ?", date.last, date.first).exists?
  end
end
