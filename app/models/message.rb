class Message < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	
	belongs_to :user
	has_and_belongs_to_many :tags

	def tag_names
		''
	end

	def tag_names=(new_tags)
		new_tags.split(' ').map do | word |
			self.tags << Tag.find_or_create_by(description: word)
	 	end
	end


	def self.search(search_string)
		# a = Message.all.map do |message|
		# 	message.tags.map do |tag|
		#   		{message => tag.description} 
		#     end
		# end
		# a.flatten.map { |e| e.map { |k, v|  k if v == search_string } }.flatten.compact
		# REFACTORED TO ... TARGETING TAGS .... via utilising ruby langugage

		# Tag.all.select{|t| t.description == search_string}.map(&:messages).flatten
		
		# refactored but targeting message but using SQL and leveraging from active record querying
		Message.joins(:tags).where(tags: {description: search_string})
    end




end
