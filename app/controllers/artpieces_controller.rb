class ArtpiecesController < ApplicationController
  before_action :set_artpiece, only: %i[show edit update]
  # include CloudinaryHelper

  def index
    @artpieces = Artpiece.all
    @artpiece = Artpiece.new
    @is_booked = @artpiece.booked?(Date.current)
    @start_date = params[:start_date] || Date.today
    @end_date = params[:end_date] || Date.today + 7.days
  end

  def show
    @rating = Rating.new(artpiece: @artpiece)
    @booking = current_user.bookings.find_by(artpiece: @artpiece) || @artpiece.bookings.new
  end

  def new
    @artpiece = Artpiece.new
  end

  def create
    @artpieces = Artpiece.all
    @artpiece = Artpiece.new(artpiece_params)
    @artpiece.user = current_user
    if @artpiece.save
      redirect_to artpiece_path(@artpiece)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @artpiece.update(artpiece_params)
      redirect_to artpiece_path(@artpiece)
    else
      render :edit
    end
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :day_price, photos: [])
  end

  def set_artpiece
    @artpiece = Artpiece.find(params[:id])
  end
end
