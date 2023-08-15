*** Settings ***
Library    XPathGenerator.py
Resource    resource.robot
Test Teardown    Close Browser

*** Test Cases ***
# Test Run 1
#     Open Browser To URL

# Test Run 2
#     Given The Zinier Web Is Up And Running
#     When The User Login As Admin
#     And User Navigates To Timesheet Screen
#     Then User Should Land On Timesheet Screen

# Test Run 3
#     Given The Zinier Web Is Up And Running
#     When The User Login As Admin
#     And User Navigates To Timesheet Screen
#     And User Navigates To Pending Review Page
#     Then User Should Land On Pending Review Screen

# Sample Test
#     ${nav_pending_review_page}    Set Variable    test_val
#     ${dynamc_xpath2}    Create New Dynamic Xpath    ${nav_pending_review_page}    test_val
#     Log    message:${dynamc_xpath2}  
#     ${dynamc_xpath3}    Create New Dynamic Xpath    ${select_date_2}    test_val    test_val_2
#     Log    message:${dynamc_xpath3}

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
