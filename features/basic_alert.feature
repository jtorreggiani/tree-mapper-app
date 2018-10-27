Feature: Basic alert

  @javascript
  Scenario: User clicks the alert button
    Given I am on the welcome page
    When I click on the alert button
    Then I see the alert
    When I click the ok button
    Then I do not see the alert
