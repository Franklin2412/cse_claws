class PostsController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@post = @user.posts.create(params[:post].permit(:content, :user_id, :profile_id))
		redirect_to user_path(@user)	
	end
	def destroy
		@user = User.find(params[:user_id])
    	@post = @user.posts.find(params[:id])
    	@post.destroy
    	redirect_to user_path(@user)
	end
end
