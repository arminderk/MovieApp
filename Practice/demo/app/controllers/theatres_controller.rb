class TheatresController < ApplicationController
  
  layout "theater"
  
  def index
    @theaters = Theatre.order(:name)
  end

  def new
  end
  
  def create
  end

  def show
  end

  def edit
  end

  def delete
  end
end
