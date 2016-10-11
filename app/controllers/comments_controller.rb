class CommentsController < ApplicationController
	def create
		@comment = Comment.create(content: params[:content_comment], user_id: session[:user_id], tweet_id: params[:tweet_id])
		@user = User.find_by_id(session[:user_id])
		tweet = Tweet.find_by_id(params[:tweet_id])
		@comment_num = tweet.comment_num*1 + 1
      	tweet.update(comment_num: @comment_num)
	end
end
