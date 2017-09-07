class TheatresController < ApplicationController
  
  layout "movie"
  
  def index
    @theaters = Theatre.order(:name)
  end
  
  def show
    @theater = Theatre.find(params[:id])
    @movies = @theater.movies
  end

  def new
    @theater = Theatre.new
  end
  
  def create
    @theater = Theatre.new(theater_params)
    if @theater.save
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

  def edit
    @theater = Theatre.find(params[:id])
  end
  
  def update
    @theater = Theatre.find(params[:id])
    if @theater.update_attributes(theater_params)
      redirect_to(:action => 'show', :id => @theater.id)
    else
      render('edit')
    end
  end

  def delete
    @theater = Theatre.find(params[:id])
  end
  
  def destroy
    theater = Theatre.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end
  
  private
    def theater_params
      params.require(:theater).permit(:name, :price)
    end
end
