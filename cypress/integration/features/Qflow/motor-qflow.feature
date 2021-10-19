Feature: motor-qflow

  Background: Smoke test Motor Questions flow
    Given I intercept the post request

  @english
  Scenario: EN - Answer all questions then go to Quotes page 
    When I answer questions with values of test case 'motor_Van_questions_ENG'
    And  I click button to see All Packages
    Then Check visibility of packages with value of test case 'packages'

  Scenario: EN - Select a package then go to Confirm page
    When User click on Proceed button with value of test case 'packages'
    Then expect the url to include 'motor-insurance/confirm'
    When User confirm contact info with value of test case 'confirm_contact_EN'
    Then Verify user information show in Thank You page