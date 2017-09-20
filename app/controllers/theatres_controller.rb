class TheatresController < ApplicationController
  
  layout "movie"
  
  def index
    @theatres = Theatre.order(:name)
  end
  
  def show
    @theatre = Theatre.find(params[:id])
    @movies = @theatre.movies
  end

  def new
    @theatre = Theatre.new
  end
  
  def create
    @theatre = Theatre.new(theatre_params)
    if @theatre.save
      redirect_to(theatres_path)
    else
      render 'new'
    end
  end

  def edit
    @theatre = Theatre.find(params[:id])
  end
  
  def update
    @theatre = Theatre.find(params[:id])
    if @theatre.update_attributes(theatre_params)
      redirect_to(theatre_path(id: @theatre.id))
    else
      render('edit')
    end
  end

  def delete
    @theatre = Theatre.find(params[:id])
  end
  
  def destroy
    @theatre = Theatre.find(params[:id]).destroy
    redirect_to(theatres_path)
  end
  
  private
    def theatre_params
      params.require(:theatre).permit(:name, :price)
    end
end
