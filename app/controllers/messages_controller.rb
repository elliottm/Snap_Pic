class MessagesController < ApplicationController
	
before_filter :authenticate_user! 

	def index
	  @messages = Message.all
	end

	def new
      @message = Message.new
	end

	def create
	  @message = Message.create(params[:message].permit(:title, :description, :image_url))

	  if @message.save
	  	redirect_to messages_path
	  else
	  	render 'new'
	  end
	end

end
