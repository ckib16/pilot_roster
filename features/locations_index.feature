Feature: Location Index

  Scenario: Viewing the Location Index page
    Given there are several locations
    When I am on the location page
    Then I should see all the locations displayed
