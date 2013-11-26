class TagsController < ApplicationController

	def new
		@tag = Tag.new
	end

	def create 
		tags = params[:tag][:description]
		tags.split(' ').map do | word |
			# raise word
			Tag.create(description: word)
		end
		redirect_to messages_path
	end

	def index 
	  	@tags = Tag.all
	  	# raise @tags
	end
end
