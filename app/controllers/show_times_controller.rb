class ShowTimesController < ApplicationController
  
  layout "application"
  
  def index
    @showtimes = ShowTime.all
  end
  
end
