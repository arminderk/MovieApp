class ShowTimesController < ApplicationController
  
  def index
    @showtimes = ShowTime.all
  end
  
end
