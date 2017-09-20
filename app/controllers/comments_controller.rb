class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to(movie_path(id: comment_params[:movie_id]))
      flash[:notice] = "Comment added"
    else
      redirect_to(movie_path(id: comment_params[:movie_id]))
      flash[:alert] = "Comment could not be added because: "
      flash[:message] = @comment.errors.full_messages
    end
  end
  
  def comment_params
    params.require(:comment).permit(:title, :name, :comment, :movie_id)
  end
  
end
