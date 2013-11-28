require 'spec_helper'

describe Tag do

  before do 
  	@tag = FactoryGirl.create(:yolo)
  	FactoryGirl.create(:message, title: "caption", tags: [@tag])
  end

  it 'can see all the photos for a particular tag' do
  	visit tag_path(@tag)
  	expect(page).to have_content 'caption'
  end
end