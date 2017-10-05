module MoviesHelper
  
  def getAllGenres
    @genre =  Movie.all.pluck(:genre)
  end
  
end
