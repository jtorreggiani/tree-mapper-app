Feature: User list

  Background:
    Given a post with the title of "Hello World!" exists

  Scenario: User views posts list
    Given I am on the "posts" page
    Then I see the text "Hello World!"
