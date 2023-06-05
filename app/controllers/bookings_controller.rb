class BookingsController < ApplicationController

  def create
    initialize_booking
    # Need to access artpiece id -- params[artpiece_id]
    # Need to access user id

    @booking.save
    redirect_to dashboard_path
  end

  private

  def initialize_booking
    @booking = Booking.new(booking_params)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :booking_status, :user_id, :artpiece_id)
  end

end
