require 'spec_helper'

describe Message do
  it 'gets messages when you do a search' do
  	Message.create(tags: [FactoryGirl.create(:tag)])
  	expect(Message.search('hello')).to be_a Message
  	# expect(Message.search('hello').first).to be_a Message
  end

end
