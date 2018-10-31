Feature: User list

  Scenario: Authenticated user views user list
    Given I am signed in as "John Smith"
    And the user "Jane Smith" exists
    And I am on the "users" page
    Then I see the text "John Smith"
    And I see the text "Jane Smith"

  Scenario: Unauthenticated views user list
    Given I am on the "users" page
    Given the user "John Smith" exists
    And the user "Jane Smith" exists
    Then I see the text "You need to sign in or sign up before continuing"
    And I do not see the text "John Smith"
    And I do not see the text "Jane Smith"
