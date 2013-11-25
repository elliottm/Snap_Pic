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

Scenario: Signing in

Given I am on the homepage
And I follow "Sign Up"
And I fill out the signup page
And I press "Sign up"
Then I should see "signed up successfully"
And I follow "Logout"
Then I should see "Signed out"
And I follow "Login"
And I fill out the signin page
And I press "Sign in"
Then I should see "Signed in successfully"


