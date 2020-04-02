class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweet
  end
end
