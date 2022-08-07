class MessagedownvoteController < ApplicationController

before_action :authenticate_user!


	def toggle_message_downvote
		
		message = Message.find(params[:message_id])
		@msg = params[:message_id]
		message_downvote = Messagedownvote.where(user_id: current_user.id, message_id: message.id).first
        @messagedownvote =false
		if message_downvote  
			message_downvote.destroy
		else
			Messagedownvote.create(user_id: current_user.id, message_id: message.id)
        	@messagedownvote=true
				
		end

		# respond_to do |format|
		# 	format.js {}
		# end
		
	end


end
