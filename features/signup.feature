Feature:

In order to use the web-service
As someone who wants to post image messages
I want to be able to sign up

Scenario: Signing up

Given I am on the homepage
And I follow "Sign Up"
And I fill out the signup page
And I press "Sign up"
Then I should see "signed up successfully"

Scenario: Signing in sucessfully

Given I am on the homepage
And I follow "Login"
And I fill out the signin page
And I press "Sign in"
Then I should see "Signed in successfully"

Scenario: Signing in unsuccessfully

Given I am on the homepage
And I follow "Login"
And I fill out the signin page incorrectly
And I press "Sign in"
Then I should see "Invalid"

