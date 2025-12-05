Feature: Dashboard Functionality

  As a logged-in user
  I want to view and interact with the dashboard
  So that I can access all the main features of the application

  @Smoke
  Scenario: Verify dashboard loads successfully
    Given user has logged into the application
    When user navigates to the dashboard page
    Then dashboard widgets should be visible
    And user should see welcome message

  @Regression
  Scenario: Verify navigation links in dashboard
    Given user is on the dashboard page
    When user clicks on the profile menu
    Then user should be redirected to profile page

    When user clicks on the notifications icon
    Then notifications panel should be displayed

    When user clicks on the logout button
    Then user should be redirected to login page

  @Regression
  Scenario: Verify dashboard counters are displayed correctly
    Given user is on the dashboard page
    When dashboard loads completely
    Then total users count should be displayed
    And total orders count should be displayed
    And total revenue count should be displayed

  @Negative
  Scenario: Verify dashboard access without login
    Given user opens dashboard page URL directly
    Then user should be redirected to login page
