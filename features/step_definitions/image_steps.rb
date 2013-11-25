Given(/^I attach an image$/) do
  attach_file 'Image', Rails.root.join('spec/images/old.jpg')
end

Then(/^I should see a picture$/) do
  pic = page.find 'img.uploaded-pic'
  expect(pic['alt']).not_to eq 'Missing'
end