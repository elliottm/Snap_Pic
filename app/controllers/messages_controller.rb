class MessagesController < ApplicationController
	
before_filter :authenticate_user! 

	def index
	  @messages = Message.all
	end

	def new
      @message = Message.new
	end

	def create
	  @message = Message.create(message_params)

	  if @message.save!
	  	redirect_to messages_path
	  else
	  	render 'new'
	  end
	end

	private

	def message_params
      params.require(:message).permit(:title, :description, :image)
	end

end
