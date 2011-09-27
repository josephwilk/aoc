Feature: Low Risk Customer Checkin
  In order to save money hiring expensive staff
  I want Low Risk Customers 
  to checkin via automated system

  Background:
    Given I made the following bookings:
      | flight | eticket | passport | 
      | 1      | 123     | 123      |

  Scenario: Successfull checkin with ETicket number
    When I enter "BA"
    And I enter my ""
    And I enter my Passport number
    And I pick my seat
    Then I should have a boarding pass printed

  Scenario: Failed checkin with Passport number
    When I enter "BA"
    And I enter my passport number incorrectly
    Then I should see "Please confirm your passport number"
    And I should not have boarding passess printed

  Scenario: Locked checkin with bad passport numbers
    When I enter "BA"
    And I enter my passport number incorrectly 3 times
    Then I should see
    """
    Sorry, there was a problem checking you in. 
    Please report to the checkout desks
    """
