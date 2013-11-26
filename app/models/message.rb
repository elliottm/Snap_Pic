class Message < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	
	belongs_to :user
	has_and_belongs_to_many :tags

end
