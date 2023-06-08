class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artpiece

  validates :start_date, :end_date, presence: true
  validate :check_overlap

  def total_price
    (end_date - start_date).to_i * artpiece.day_price
  end

  private

  def check_overlap
    overlaps = Booking.where(artpiece_id: artpiece_id)
                      .where.not(id: id)
                      .where('start_date < ? AND end_date > ?', end_date, start_date)
    errors.add(:base, 'Booking dates overlap with an existing booking') if overlaps.any?
  end
end
