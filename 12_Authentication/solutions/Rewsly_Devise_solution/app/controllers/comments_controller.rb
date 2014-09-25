class CommentsController < ApplicationController
	before_action :authenticate_user!


def create
  safe_comment_params = params.require(:comment).permit(:description)
  @comment = Comment.new safe_comment_params
  if @comment.save
    @story = Story.find(params[:story_id])
    @story.comments << @comment
    current_user.comments << @comment
    redirect_to @story

  else
    redirect_to :back
  end

end

end
