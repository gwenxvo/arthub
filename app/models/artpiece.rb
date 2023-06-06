class Artpiece < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :day_price, presence: true

  def book_validation(date)
    bookings.where("start_date <= ? and end_date >= ?", date.last, date.first).exists?
  end
end
