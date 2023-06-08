class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @artpieces = current_user.artpieces
    @all_artpieces = Artpiece.all
  end
end
