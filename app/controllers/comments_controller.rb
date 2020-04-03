class CommentsController < ApplicationController

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def create
    Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end