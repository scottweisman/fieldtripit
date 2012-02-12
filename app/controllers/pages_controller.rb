class PagesController < ApplicationController
  def home
    if user_signed_in?
      @trips = current_user.trips.all
    end
  end
end
