class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]

  
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

  def show
  end


  private
  def tweet_params
    params.require(:tweet).permit(:text, :image)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id]) 
  end

end
