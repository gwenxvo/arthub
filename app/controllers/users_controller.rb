class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @artpieces = current_user.artpieces
  end
end
