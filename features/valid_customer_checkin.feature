Feature: Valid Customer Checkin
  In order to save money hiring expensive staff
  I want Valid Customers 
  to checkin via automated system

  Scenario: Successfull checkin
    When I enter "BA"
    And I enter my Passport number
    And I pick my seat
    Then I should have a boarding pass printed

