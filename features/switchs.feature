Feature: Switchs
  Scenario: Run success
    When I run `switchs foooooooooo`
    Then the output should contain "f"
