class ShowTimesController < ApplicationController
  
  layout "showtime"
  
  def index
    @showtimes = ShowTime.all
  end
  
end
