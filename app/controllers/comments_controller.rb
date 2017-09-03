class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      @movie = Movie.find(comment_params[:movie_id])
      redirect_to(:controller => 'movies', :action => 'show', :id => @movie.id)
    end
  end
  
  def comment_params
    params.require(:comment).permit(:title, :name, :comment, :movie_id)
  end
  
end
