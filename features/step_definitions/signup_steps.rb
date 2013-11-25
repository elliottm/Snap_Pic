Given(/^I fill out the signup page$/) do
  fill_in('Email', :with => 'qwerty@gmail.com')
  fill_in('Password', :with => 'qwertyui')
  fill_in('Password confirmation', :with => 'qwertyui')
end

Given(/^I fill out the signin page$/) do
  fill_in('Email', :with => 'qwerty@gmail.com')
  fill_in('Password', :with => 'qwertyui')
end

