module MoviesHelper
  
  def getAllGenres
    @genres =  Movie.all.pluck('DISTINCT genre')
  end
  
end
