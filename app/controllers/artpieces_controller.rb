class ArtpiecesController < ApplicationController
  before_action :set_artpiece, only: %i[show edit update]
  # include CloudinaryHelper

  def index
    @artpiece = Artpiece.new
    @artpieces = params[:query].present? ? Artpiece.search(params[:query]) : Artpiece.all
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
    if @artpiece.update(edit_artpiece_params)
      if params[:artpiece][:photos].present?
        params[:artpiece][:photos].each do |image|
          @artpiece.photos.attach(image)
        end
      end
      flash[:success] = 'Updated!'
      redirect_to artpiece_path(@artpiece)
    else
      flash[:error] = 'Not updated'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @artpiece = Artpiece.find(params[:id])
    @artpiece.destroy
    redirect_to artpieces_path, status: :see_other
  end

  def search
    @artpieces = Artpiece.algolia_search(params[:query]) if params[:query].present
  end

  private

  def artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :day_price, photos: [])
  end

  def edit_artpiece_params
    params.require(:artpiece).permit(:title, :artist, :description, :day_price)
  end

  def set_artpiece
    @artpiece = Artpiece.find(params[:id])
  end
end
