class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweet.page(params[:page]).order("created_at DESC")
  end
end
