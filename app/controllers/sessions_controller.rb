class SessionsController < ApplicationController
<<<<<<< HEAD
	def index
	end
=======
>>>>>>> 9a120180d3ac1f6960364cc0f6de617437c21261
	def new
		@user = User.new
	end

	def create
		@user = User.authenticate(params[:username], params[ :password])
			if @user.nil?
				redirect_to new_session_path, :notice => "Invalid username or password"
			else
				session[:user_id] = @user.id
				@current_id = @user.id
				@post = Post.new
				render "posts/new",collection: @post
			end 
	end
end