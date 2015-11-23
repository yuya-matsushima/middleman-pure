Feature: Pure

  Scenario: create css contains Pure
    Given a fixture app "empty-sass-app"
    And a file named "source/stylesheets/all.css.sass" with:
      """
      @import "pure"
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And a file named "build/stylesheets/all.css" should exist
    And the file "build/stylesheets/all.css" should contain "Pure"

  Scenario: create css contains Pure
    Given a fixture app "empty-css-app"
    And a file named "source/stylesheets/all.css" with:
      """
      //= require "pure"
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And a file named "build/stylesheets/all.css" should exist
    And the file "build/stylesheets/all.css" should contain "Pure"
