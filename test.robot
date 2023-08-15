*** Settings ***
Library    XPathGenerator.py
Resource    resource.robot
Test Teardown    Close Browser

*** Test Cases ***
Test Case To Check If Environment Is Up And Running
    When Open Browser To URL
    Then The Zinier Web Is Up And Running

Test Case To Check If TS module Is Present In The Org
    Given The Zinier Web Is Up And Running
    When The User Login As Admin
    And User Navigates To Timesheet Screen
    Then User Should Land On Timesheet Screen

Test Case To Check If Pending Review Present
    Given The Zinier Web Is Up And Running
    When The User Login As Admin
    And User Navigates To Timesheet Screen
    And User Navigates To Pending Review Page
    Then User Should Land On Pending Review Screen


Add Activity to the TS
    Given The Zinier Web Is Up And Running
    When The User Login As Admin
    And User Navigates To Timesheet Screen
    And User Performs Filter On Current Date
    And User Selects Specific Technitian
    And User Edits The Time Sheet
    And User Adds Overtime Activity To The TS
    Then Added Activity Should Be Visible In The Activity List Of TS

Submit the TS for Apporval Test
    Given The Zinier Web Is Up And Running
    When The User Login As Admin
    And User Navigates To Timesheet Screen
    And User Performs Filter On Current Date
    And User Selects Specific Technitian
    And User Edits The Time Sheet
    And User Submits The Time Sheet For Apporval
    And User Navigates To Pending Review Page
    Then Submitted Time Sheet Should Be In Pending Apporval State