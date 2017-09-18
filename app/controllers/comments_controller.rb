class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @movie = Movie.find(comment_params[:movie_id])
    if @comment.save
      redirect_to(:controller => 'movies', :action => 'show', :id => @movie.id)
      flash[:notice] = "Comment added"
    else
      redirect_to(:controller => 'movies', :action => 'show', :id => @movie.id)
      flash[:alert] = @comment.errors.messages
    end
  end
  
  def comment_params
    params.require(:comment).permit(:title, :name, :comment, :movie_id)
  end
  
end
