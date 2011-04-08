@javascript
Feature: Applicant for jobs
  In order to apply for the given job
  I should fill in the form of applicant

Scenario: Check apply for the job
  Given I am on the applicant page
  And I press apply_now
  And I go to the applicant page
  And I fill in "Tell us your name" with "ram"
  And I sleep for 2 seconds
