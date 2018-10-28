Feature: Signing up

  Scenario: User signs up
    Given I am on the sign up page
    When I fill in the "Email" field with "joetorreggiani@gmail.com"
    And I fill in the "Password" field with "password123"
    And I fill in the "Password confirmation" field with "password123"
    And I click the "Sign up" button
    Then I see the text "Welcome! You have signed up successfully"
