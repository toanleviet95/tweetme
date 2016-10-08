class HomeController < ApplicationController
  def index
  	if session[:user_id]
  		@user = User.find_by_id(session[:user_id])
  	else
  		redirect_to '/'
  	end
  end
end
