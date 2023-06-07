class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artpiece

  validates :start_date, :end_date, presence: true
  validate :dates_do_not_overlap

  private

  def dates_do_not_overlap
    overlaps = Booking.where(artpiece_id: artpiece_id)
                      .where.not(id: id)
                      .where('start_date < ? AND end_date > ?', end_date, start_date)
    errors.add(:base, 'Booking dates overlap with an existing booking') if overlaps.any?
  end
end
