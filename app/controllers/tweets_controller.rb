class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.order("created_at DESC").limit(8)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, :image)
  end


end
