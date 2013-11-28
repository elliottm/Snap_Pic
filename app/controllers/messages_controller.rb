class MessagesController < ApplicationController
	
before_filter :authenticate_user! 
before_action :check_permission, only: [:update, :destroy]

	def index
		if params[:search]
		@messages = Message.search(params[:search])
	    else
	        @messages = Message.where(user_id: current_user.id)
	    end
	end

	def new
      @message = Message.new
	end

	def create

	  @message = Message.new(message_params)
	  @message.user = current_user

	 #  tags = params[:message][:tags].split(' ').map do | word |
		# @message.tags << Tag.create(description: word)
	 #  end
	  
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

	def group
      @messages = Message.all 
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
      params.require(:message).permit(:title, :image, :tag_names)
	end


end
