Feature: car-qflow

  Background: Smoke test Car Questions flow
    Given I intercept the post request

  @english
  Scenario: EN - Answer all questions then go to Quotes page 
    When I answer questions with values of test case 'car_questions_ENG'
    Then expect the url to include 'car-insurance/quotes'
    Then Check visibility of packages with value of test case 'packages'

  Scenario: EN - Use filter and check packages
    When User change filter option in EN
    Then Check visibility of packages with value of test case 'filter_packages'

  Scenario: EN - Select a package then go to Confirm page
    When User click on Proceed button with value of test case 'packages'
    Then expect the url to include 'car-insurance/confirm'
    When User confirm contact info with value of test case 'confirm_contact_EN'
    Then Verify user information show in Thank You page

  @thai
  Scenario: TH - Answer all questions then go to Quotes page 
    When I answer questions with values of test case 'car_questions_THAI'
    Then expect the url to include 'car-insurance/quotes'
    And Check visibility of packages with value of test case 'packages'

  Scenario: TH - Use filter and check packages
    When User change filter option in TH
    Then Check visibility of packages with value of test case 'filter_packages'

  Scenario: TH - Select a package then go to Confirm page
    When User click on Proceed button with value of test case 'packages'
    Then expect the url to include 'car-insurance/confirm'
    When User confirm contact info with value of test case 'confirm_contact_TH'
    Then Verify user information show in Thank You page  

