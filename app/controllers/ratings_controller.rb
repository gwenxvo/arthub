class RatingsController < ApplicationController
  def create
    @artpiece = Artpiece.find(params[:artpiece_id])
    @rating = Rating.new(rating_params)
    @rating.artpiece = @artpiece
    @rating.current_user = current_user

    if @rating.save
      redirect_to artpiece_path(@artpiece)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:content, :rating)
  end
end
