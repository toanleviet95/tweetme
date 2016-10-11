class HomeController < ApplicationController
  def index
  	if session[:user_id]
  		@user = User.find_by_id(session[:user_id])
  		@tweets = Tweet.joins(:user).order(created_at: :desc).all
  		@count_tweets = Tweet.where(user_id: session[:user_id]).count
  	else
  		redirect_to '/'
  	end
  end
end
