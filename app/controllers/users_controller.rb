class UsersController < ApplicationController
	def login
		if User.exists?(username: params[:username], password: params[:password])
			user = User.find_by(username: params[:username], password: params[:password])
			session[:user_id] = user.id
			redirect_to "/home"
		else
			@result_login = '*Username/Password is not correct'
			@color_login = 'red'
		end
	end
	def create
		fullname = params[:fullname]
		confirm = params[:confirm]
		username = params[:username]
		password = params[:password]
		if fullname =~ /\d/
		 	@result_register = '*Full name is not correct'
		 	@color_register = 'red'
		elsif !confirm.eql? params[:password]
			@result_register = '*Confirm password is not correct'
			@color_register = 'red'
		elsif fullname.length < 6
			@result_register = '*Full name has at least 6 characters'
			@color_register = 'red'
		elsif username.length < 6
			@result_register = '*Username has at least 6 characters'
			@color_register = 'red'
		elsif password.length < 6
			@result_register = '*Password has at least 6 characters'
			@color_register = 'red'
		else
			user = User.create(fullname: fullname, username: username, password: password)
			if user.valid?
				@result_register = 'Your account has been created. Please login tweetme'
				@color_register = 'green'
			end
		end
	end
end
