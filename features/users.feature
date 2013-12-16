Feature: Users
  In order to protect my privacy
  As a User
  I want to be able to sign in

  Scenario: User is greeted upon signin
    Given the user "Phil" has an account
    When he logs in
    Then he should see "Welcome, Phil"
