Feature: Register new account
  As a user
  I would like to register a new account
  So that I can have access to Kurrenci

Scenario: Successfully register a new random user
  Given I am on the homepage
  When I navigate to the registration page
  And I fill out the registration form with random data
  Then I should see "Welcome to Kurrenci"


