Feature: User Sign Up

  Scenario: Creating a new account
    Given I am a new, authenticated user
    When I visit the sign in page
    Then 
