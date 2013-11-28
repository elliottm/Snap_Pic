
FactoryGirl.define do 
	factory :message do
	  image Rails.root.join('spec/images/old.jpg').open
	end
end