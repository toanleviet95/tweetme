class ProfileController < ApplicationController
	def index
		if session[:user_id]
			if params[:id]
				@user = User.find_by_id(params[:id])
				@tweets = Tweet.where(user_id: params[:id]).order(created_at: :desc).all
			else
				@user = User.find_by_id(session[:user_id])
				@tweets = Tweet.where(user_id: session[:user_id]).order(created_at: :desc).all
			end
		else
			redirect_to "/"
		end
	end
end
