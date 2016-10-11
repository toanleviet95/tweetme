class FollowsController < ApplicationController
	def create
		Follow.create(user_id: params[:user_id], follower_id: session[:user_id])
		user_follow = User.find_by_id(session[:user_id])
		following = user_follow.following
		following = following*1 + 1
		user_follow.update(following: following)
		@user_followed = User.find_by_id(params[:user_id])
		followers = @user_followed.followers
		followers = followers*1 + 1
		@user_followed.update(followers: followers)
	end
	def delete
		follow = Follow.find_by(user_id: params[:user_id], follower_id: session[:user_id])
      	follow.destroy
      	user_follow = User.find_by_id(session[:user_id])
		following = user_follow.following
		following = following*1 - 1
		user_follow.update(following: following)
		@user_followed = User.find_by_id(params[:user_id])
		followers = @user_followed.followers
		followers = followers*1 - 1
		@user_followed.update(followers: followers)
	end
end
