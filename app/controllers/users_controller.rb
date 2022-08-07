class UsersController < ApplicationController
before_action :set_user
	def show
		@messages = Message.all
	    @answer = Answer.all
	    @messagefollow = MessageFollow.all
	    @messagecomments = Messagecomment.all
	    @upvotes = Upvote.all
	    @follow = FollowMapping.all 
	    @users = User.all
	    @bookmark = Answerbookmark.all
	end
	
	def index
		@messages = Message.all
	    @answer = Answer.all
	    @messagefollow = MessageFollow.all
	    @messagecomments = Messagecomment.all
	    @upvotes = Upvote.all
	    @follow = FollowMapping.all 
	    @users = User.all
	    @bookmark = Answerbookmark.all
	end

	def set_user
      @user = User.find(params[:id])
	end

end