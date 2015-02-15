Feature: Pure

  Scenario: create css contains Pure
    Given a fixture app "pure-app"
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And a file named "build/stylesheets/all.css" should exist
    And the file "build/stylesheets/all.css" should contain "Pure"
