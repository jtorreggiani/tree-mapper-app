Feature: User profile

  Scenario: User views profile
    Given the user "John Smith" exists
    And I am on the "johnsmith" page
    Then I should see the text "John Smith"
    And I should see the text "johnsmith@example.com"
