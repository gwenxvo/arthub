class BookingsController < ApplicationController
  before_action :set_artpiece, only: [:create, :update, :destroy]
  before_action :set_booking, only: [:update, :destroy]

  def create
    @booking = @artpiece.bookings.new(booking_params)
    @booking.user = current_user
    @booking.booking_status = @artpiece.booked?(Date.current)
    if @booking.save
      redirect_to artpiece_path(@artpiece), notice: 'Booking was successfully created'
    else
      render 'artpieces/show'
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to artpiece_path(@artpiece), notice: 'Booking was successfully updated'
    else
      render 'artpieces/show'
    end
  end

  def destroy
    @booking.destroy
    redirect_to artpiece_path(@artpiece), notice: 'Booking was successfully cancelled'
  end

  private

  def set_artpiece
    @artpiece = Artpiece.find(params[:artpiece_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
