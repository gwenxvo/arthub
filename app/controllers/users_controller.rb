class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @artpieces = current_user.artpieces
    @received_bookings = @artpieces.map do |art|
      art.bookings
    end.flatten
    @all_artpieces = Artpiece.all
  end
end
