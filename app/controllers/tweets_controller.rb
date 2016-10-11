class TweetsController < ApplicationController
	def create
		content = params[:your_mind]
		if content.length <= 140
			@tweet = Tweet.create(content: content, user_id: session[:user_id])
			@user = User.find_by_id(session[:user_id])
		end
	end
end
