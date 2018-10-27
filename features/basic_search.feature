Feature: Searching for posts

  Scenario: User submits a valid search
    Given I am on the welcome page
    When I fill in the search form
    Then I should see search results
