class ArtpiecesController < ApplicationController
  before_action :set_artpiece, only: %i[show edit update]

  def index
    @artpieces = Artpiece.all
    @artpiece = Artpiece.new
    @start_date = params[:start_date] || Date.today
    @end_date = params[:end_date] || Date.today + 7.days
  end

  def show
    @booking = Booking.new
  end

  def new
    @artpiece = Artpiece.new
  end

  def create
    @artpiece = Artpiece.new(artpiece_params)
    if @artpiece.save
      redirect_to artpiece_path(@artpiece)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @artpiece.update(artpiece_params)
      redirect_to artpiece_path(@artpiece)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :day_price)
  end

  def set_artpiece
    @artpiece = Artpiece.find(params[:id])
  end
end
