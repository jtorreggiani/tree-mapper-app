Feature: Basic alert

  @javascript
  Scenario: User clicks the alert button
    Given I am on the welcome page
    When I click the "Display Alert" button
    Then I should see an alert with the text "Example Alert"
    When I accept the alert
    Then I should not see the alert
