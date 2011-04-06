@javascript
Feature: search for jobs
  In order to check if the search is running correctly
  I should check the search mechanism

Scenario: Check search feature
  Given I am on the jobs page
  And I fill in "search" with "man"
  And I press "Search"
  And I sleep for 2 seconds
  And I go to the search jobs page
  Then I should see "Management"