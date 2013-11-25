Given(/^I have logged in as a user$/) do
  create(:user)
  visit('/')
  click_link('Login')
  fill_in('Email', :with => 'qwerty@gmail.com')
  fill_in('Password', :with => 'qwertyui')
  click_button('Sign in')
end