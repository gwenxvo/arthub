class BookingsController < ApplicationController
  before_action :set_artpiece

  def create
    @booking = @artpiece.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to artpiece_path(@artpiece)
    else
      render "artpieces/show"
    end
  end

  private

  def set_artpiece
    @artpiece = Artpiece.find(params[:artpiece_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
