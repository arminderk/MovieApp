class ShowTimesController < ApplicationController
  
  layout "movie"
  
  def index
    @showtimes = ShowTime.all
  end
  
end
