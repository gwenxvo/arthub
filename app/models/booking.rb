class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artpiece

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :booking_check

  private

  def end_date_after_start_date
    return unless start_date && end_date

    errors.add(:end_date, "must be after start date") if end_date <= start_date
  end

  def booking_check
    if Booking.where("artpiece_id = ? and ? < end_date and ? > start_date", artpiece_id, start_date, end_date).any?
      errors.add(:base, "That fancy-schmancy artpiece you are eyeing is it's totally locked and loaded for that specific period")
    end
  end
end
