Given(/^I fill in the new message form correctly$/) do
  fill_in('Title', :with => "ahoyahoy")
  fill_in('Description', :with => "yeeoooooo")
end