class ArtpiecesController < ApplicationController

  def index
    @artpieces = Artpiece.all
  end

  def show
    @artpiece = Artpiece.find(params[:id])
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
    @artpiece = Artpiece.find(params[:id])
  end

  def update
    @artpiece = Artpiece.find(params[:id])
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
end
