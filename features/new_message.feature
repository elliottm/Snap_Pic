Feature:

In order to use the website for writing messages and attaching photos
As a user
I want to be able to create messages

Background:
Given I have logged in as a user
Then I should see "Signed in successfully"
Then I should see "List of current messages"

Scenario: Adding a message without image

Given I follow "New message"
And I fill in the new message form correctly
And I press "Create Message"
Then I should see "yeeooo"

Scenario: Adding a message with an image

Given I follow "New message"
And I fill in the new message form correctly
And I attach an image
And I press "Create Message"
Then I should see a picture
