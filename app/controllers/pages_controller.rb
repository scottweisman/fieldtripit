class PagesController < ApplicationController
  def home
    if user_signed_in?
      @trips = current_user.trips.all
      @classrooms = current_user.classrooms.all
      @overview_active = 'active'
    end
  end
end
