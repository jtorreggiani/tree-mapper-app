Feature: Signing in

  Scenario: User signs in
    Given I am on the sign in page
    And I am an existing user named John Smith
    When I fill in the "Email" field with "johnsmith@example.com"
    And I fill in the "Password" field with "password123"
    And I click the "Log in" button
    Then I see the text "Signed in successfully"
