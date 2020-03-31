class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.order("created_at DESC").limit(8)
  end

  def new
    @tweet = Tweet.new
  end

end
