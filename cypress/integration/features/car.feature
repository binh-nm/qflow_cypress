Feature: Test for the Question page

  In this feature all the fields of the question page will be tested. For all fields the question will be validated.
  If there is a select field, both the options and the default option will be validated.
  Furthermore, for the text input fields the validations will be checked.

  Background: Testing
    Given user navigate to car insurance question page

  @english
  Scenario: TC_001_QUESTION_PAGE - car brand - ENG
    
    Then expect options of 'carbrand' select to be correct in 'english'
    And expect question of 'carbrand' select to be 'What is your car brand?'

  @english
  Scenario: TC_002_QUESTION_PAGE - car model - ENG
    
    Then expect options of 'carmodel' select to be correct in 'english'
    And expect question of 'carmodel' select to be 'What is your car model?'

  @english
  Scenario: TC_003_QUESTION_PAGE - car year - ENG
    
    Then expect options of 'caryear' select to be correct in 'english'
    And expect question of 'caryear' select to be 'Which year was your car manufactured?'

#   @english
#   Scenario: TC_0019_QUESTION_PAGE - province field - ENG
#     Given the form is filled until 'province' in 'english'
#     Then expect options of 'province' select to be correct in 'english'
#     And expect question of 'province' select to be 'Please select your province'
#     And expect default option of 'province' to be 'Select other provinces'
#     When I select option 'Kalasin' at select 'province'
#     Then expect 'input' with text 'name' to be 'visible'
#     Then expect 'input' with text 'surname' to be 'visible'

#   @thai
#   Scenario: TC_0020_QUESTION_PAGE - province field - THAI
#     Given the form is filled until 'province' in 'thai'
#     Then expect options of 'province' select to be correct in 'thai'
#     And expect question of 'province' select to be 'ระบุจังหวัดของคุณ'
#     And expect default option of 'province' to be 'เลือกจังหวัดอื่น ๆ'
#     When I select option 'ลำปาง' at select 'province'
#     Then expect 'input' with text 'name' to be 'visible'
#     Then expect 'input' with text 'surname' to be 'visible'

#   @english
#   Scenario: TC_0021_QUESTION_PAGE - name and surname field - ENG
#     Given the form is filled until 'name' in 'english'
#     Then expect question of 'name' select to be 'What is your first name? '
#     And expect question of 'surname' select to be 'What is your last name? '
#     When I type 'Cypress' at the 'name' field
#     And I type 'Test' at the 'surname' field
#     Then expect button 'Next' in section 'name' to be 'enabled'

#   @thai
#   Scenario: TC_0022_QUESTION_PAGE - name and surname field - THAI
#     Given the form is filled until 'name' in 'thai'
#     Then expect question of 'name' select to be 'ระบุชื่อจริงของคุณ (ภาษาไทย)'
#     And expect question of 'surname' select to be 'ระบุนามสกุลของคุณ (ภาษาไทย)'
#     When I type 'มีเดียร์' at the 'name' field
#     And I type 'คิวเอ' at the 'surname' field
#     Then expect button 'ต่อไป' in section 'name' to be 'enabled'

#   @english
#   Scenario: TC_0023_QUESTION_PAGE - name and surname field - ENG
#     Given the form is filled until 'name' in 'english'
#     When I type '12345689' at the 'name' field
#     And I type '12345689' at the 'surname' field
#     Then expect button 'Next' in section 'name' to be 'disabled'
#     Then expect error message 'Please enter a valid name' is displayed at 'name' field
#     Then expect error message 'Please enter a valid name' is displayed at 'surname' field

#     When I type '' at the 'name' field
#     And I type '' at the 'surname' field
#     Then expect error message 'This field is required.' is displayed at 'name' field
#     Then expect error message 'This field is required.' is displayed at 'surname' field
#     Then expect button 'Next' in section 'name' to be 'disabled'

#   @thai
#   Scenario: TC_0024_QUESTION_PAGE - name and surname field - THAI
#     Given the form is filled until 'name' in 'thai'
#     When I type '12345689' at the 'name' field
#     And I type '12345689' at the 'surname' field
#     Then expect button 'ต่อไป' in section 'name' to be 'disabled'
#     Then expect error message 'โปรดระบุชื่อที่ถูกต้อง' is displayed at 'name' field
#     Then expect error message 'โปรดระบุชื่อที่ถูกต้อง' is displayed at 'surname' field

#     When I type '' at the 'name' field
#     And I type '' at the 'surname' field
#     Then expect error message 'กรุณากรอกข้อมูลในช่องนี้' is displayed at 'name' field
#     Then expect error message 'กรุณากรอกข้อมูลในช่องนี้' is displayed at 'surname' field
#     Then expect button 'ต่อไป' in section 'name' to be 'disabled'

#   @english
#   Scenario: TC_0025_QUESTION_PAGE - phone and email field - ENG
#     Given the form is filled until 'phone' in 'english'
#     Then expect question of 'name' select to be 'What is your first name? '
#     And expect question of 'surname' select to be 'What is your last name? '
#     And expect the 'phone' field to have value 'Ex: 0860000000'
#     And expect the 'email' field to have value 'Ex: example@gmail.com'
#     When I type '0999999999' at the 'phone' field
#     And I type 'cypres@test.co.th' at the 'email' field
#     Then expect button 'Next' in section 'name' to be 'enabled'

#   @thai
#   Scenario: TC_0026_QUESTION_PAGE - phone and email field - THAI
#     Given the form is filled until 'phone' in 'thai'
#     Then expect question of 'name' select to be 'ระบุชื่อจริงของคุณ (ภาษาไทย)'
#     And expect question of 'surname' select to be 'ระบุนามสกุลของคุณ (ภาษาไทย)'
#     And expect the 'phone' field to have value 'ตย: 0860000000'
#     And expect the 'email' field to have value 'ตย: example@gmail.com'
#     When I type '0999999999' at the 'phone' field
#     And I type 'cypres@test.co.th' at the 'email' field
#     Then expect button 'ต่อไป' in section 'name' to be 'enabled'

#   @english
#   Scenario: TC_0027_QUESTION_PAGE - phone and email field - ENG
#     Given the form is filled until 'phone' in 'english'
#     When I type '12345689' at the 'phone' field
#     And I type '12345689' at the 'email' field
#     Then expect button 'Next' in section 'phone' to be 'disabled'
#     Then expect error message 'Please enter a valid phone number' is displayed at 'phone' field
#     Then expect error message 'Please enter a valid email address' is displayed at 'email' field

#     When I type '' at the 'phone' field
#     And I type '' at the 'email' field
#     Then expect error message 'This field is required.' is displayed at 'phone' field
#     Then expect error message 'This field is required.' is displayed at 'email' field
#     Then expect button 'Next' in section 'phone' to be 'disabled'

#   @thai
#   Scenario: TC_0028_QUESTION_PAGE - phone and email field - THAI
#     Given the form is filled until 'phone' in 'thai'
#     When I type '12345689' at the 'phone' field
#     And I type '12345689' at the 'email' field
#     Then expect button 'ต่อไป' in section 'phone' to be 'disabled'
#     Then expect error message 'โปรดกรอกเบอร์โทรศัพท์ที่ถูกต้อง' is displayed at 'phone' field
#     Then expect error message 'โปรดกรอกอีเมลที่ถูกต้อง' is displayed at 'email' field

#     When I type '' at the 'phone' field
#     And I type '' at the 'email' field
#     Then expect error message 'กรุณากรอกข้อมูลในช่องนี้' is displayed at 'phone' field
#     Then expect error message 'กรุณากรอกข้อมูลในช่องนี้' is displayed at 'email' field
#     Then expect button 'ต่อไป' in section 'phone' to be 'disabled'
