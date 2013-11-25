class MessagesController < ApplicationController
	
before_filter :authenticate_user! 
before_action :check_permission, only: [:update, :destroy]

	def index
	  @messages = Message.where(user_id: current_user.id)
	end

	def new
      @message = Message.new
	end

	def create
	  @message = Message.new(message_params)
	  @message.user = current_user
	  #better way to do a merge !

	  if @message.save
	  	redirect_to messages_path
	  else
	  	render 'new'
	  end
	end

	def destroy
      @message = Message.find(params[:id])
      @message.destroy
      redirect_to messages_path
    end


	private

	def check_permission
		@message = Message.find(params[:id])
		if @message.user != current_user
			flash.alert = "Not your post"
			redirect_to messages_path
		end
	end

	def message_params
      params.require(:message).permit(:title, :description, :image)
	end

end
