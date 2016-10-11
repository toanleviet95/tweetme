class HomeController < ApplicationController
  def index
  	if session[:user_id]
  		@user = User.find_by_id(session[:user_id])
  		@follows = Follow.where(follower_id: session[:user_id]).distinct
  		@tweets = Tweet.joins(:user).order(created_at: :desc).all
  		@count_tweets = Tweet.where(user_id: session[:user_id]).count
  		@people_may_know = User.where.not(id: session[:user_id]).order(id: :asc).limit(5)
  	else
  		redirect_to '/'
  	end
  end
end
