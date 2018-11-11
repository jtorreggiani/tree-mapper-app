Feature: Posts page

  Background:
    Given a post with the title of "First post!" exists

  Scenario: User views the posts page
    Given I am on the "posts" page
    Then I should see the text "First Post!"

  Scenario: User does not see an older post
    Given there are "20" newer "posts"
    And a post with the title of "Last post!" was created
    When I visit the "posts" page
    Then I should see the text "Last post!"
    And I should not see the text "First post!"

  Scenario: User searches for an older post
    Given I am on the "posts" page
    When I fill in the "query" field with "first"
    And I click the "Search" button
    Then I should see the text "First post!"
