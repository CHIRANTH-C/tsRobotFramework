*** Settings ***
Library    SeleniumLibrary
Library    XPathGenerator.py
Variables    Constants/Xpaths/xpath.py
Variables    Constants/Xpaths/timesheet.py
Variables    Constants/Xpaths/solution.py

*** Variables ***

${WEBSITE_URL}    url
${BROWSER}    Chrome
${EXEC_PATH}    Constants/Driver/chromedriver.exe    

*** Keywords ***
# def open_browser_to_url

Open Browser To URL
    Open Browser    ${WEBSITE_URL}    ${BROWSER}    executable_path=${EXEC_PATH}
    Maximize Browser Window
    Set Selenium Speed    1
    Page Should Contain Element    ${txt_welcome_note}

The Zinier Web Is Up And Running
    Open Browser    ${WEBSITE_URL}    ${BROWSER}    executable_path=${EXEC_PATH}
    Maximize Browser Window
    Set Selenium Speed    1
    Page Should Contain Element    ${txt_welcome_note}
The User Login As Admin
    Page Should Contain Element    ${txt_box_env}
    Page Should Contain Element    ${txt_box_org}
    Input Text    ${txt_box_env}    env
    Input Text    ${txt_box_org}    org
    Click Button    ${btn_element}
    Wait Until Element Is Visible    ${txt_box_username}
    Page Should Contain Textfield    ${txt_box_username}
    Page Should Contain Textfield    ${txt_box_password}
    Input Text    ${txt_box_username}    uname
    Input Text    ${txt_box_password}    creds
    Click Button    ${btn_element}
User Navigates To Timesheet Screen
    Wait Until Element Is Visible    ${nav_bar_ts}    20    "could not load the page even after 20 sec"
    Page Should Contain Element    ${nav_bar_ts}
    Click Element    ${nav_bar_ts}
    Wait Until Element Is Visible    ${ts_tech_drop_down}    20
    Wait Until Element Is Enabled    ${nav_pending_review_page}    20
    Page Should Contain Element    ${nav_pending_review_page}    20
    Wait Until Element Is Visible    ${from_date}


    
User Should Land On Timesheet Screen
    Page Should Contain Element    ${from_date}

User Navigates To Pending Review Page
    Wait Until Element Is Visible    ${nav_pending_review_page}
    Click Element    ${nav_pending_review_page}

User Should Land On Pending Review Screen
    Wait Until Element Is Visible    ${from_date}

User Performs Filter On Current Date
    # From Date filtering
    Wait Until Element Is Visible    ${from_date}
    Click Element    ${from_date}
    ${dxp1}    Create New Dynamic Xpath    ${month_drop_down}    1
    Wait Until Element Is Visible    ${dxp1}
    Click Element    ${dxp1}
    ${dxp2}    Create New Dynamic Xpath    ${month_drop_down_selection}    August    1
    Wait Until Element Is Visible    ${dxp2}
    Click Element    ${dxp2}
    ${dxp3}    Create New Dynamic Xpath    ${txt_input_year}    1
    Wait Until Element Is Visible    ${dxp3}
    Click Element    ${dxp3}
    Input Text    ${dxp3}    2023
    ${xpath2}    Create New Dynamic Xpath    ${select_date_1}    8    1
    ${xpath3}    Create New Dynamic Xpath    ${select_date_2}    8    1
    ${compount_xpath}=    Catenate    SEPARATOR=    ${xpath2} | ${xpath3}
    Wait Until Element Is Visible    ${compount_xpath}
    Click Element    ${compount_xpath}

    # To Date filtering
    Wait Until Element Is Visible    ${to_date}
    Click Element    ${to_date}
    ${dxp1}    Create New Dynamic Xpath    ${month_drop_down}    2
    Wait Until Element Is Visible    ${dxp1}
    Click Element    ${dxp1}
    ${dxp2}    Create New Dynamic Xpath    ${month_drop_down_selection}    August    2
    Wait Until Element Is Visible    ${dxp2}
    Click Element    ${dxp2}
    ${dxp3}    Create New Dynamic Xpath    ${txt_input_year}    2
    Wait Until Element Is Visible    ${dxp3}
    Click Element    ${dxp3}
    Input Text    ${dxp3}    2023
    ${xpath2}    Create New Dynamic Xpath    ${select_date_1}    8    1
    ${xpath3}    Create New Dynamic Xpath    ${select_date_2}    8    1
    ${compount_xpath}=    Catenate    SEPARATOR=    ${xpath2} | ${xpath3}
    Wait Until Element Is Visible    ${compount_xpath}
    Click Element    ${compount_xpath}

User Selects Specific Technitian
    Wait Until Element Is Visible    ${ts_tech_drop_down}
    Click Element    ${ts_tech_drop_down}
    Wait Until Element Is Visible    ${btn_clear_all}
    Click Button    ${btn_clear_all}
    Wait Until Element Is Visible    ${txt_input_search_tech}
    Input Text    ${txt_input_search_tech}    Umesh
    ${dxp6}    Create New Dynamic Xpath    ${check_box_select}    Umesh
    Wait Until Element Is Visible    ${dxp6}
    Click Element    ${dxp6}
    Wait Until Element Is Visible    ${btn_apply}
    Click Button    ${btn_apply}

User Edits The Time Sheet
    ${dxp4}    Create New Dynamic Xpath    ${ts_date_row}    Umesh
    Wait Until Element Is Visible    ${dxp4}
    Mouse Over    ${dxp4}
    Wait Until Element Is Visible    ${edit_icon}
    Click Element    ${edit_icon}
User Submits The Time Sheet For Apporval
    Wait Until Element Is Visible    ${btn_save}
    Click Button    ${btn_save}
    # Wait Until Element Is Visible    ${btn_continue}
    # Click Button    ${btn_continue}
Submitted Time Sheet Should Be In Pending Apporval State
    User Performs Filter On Current Date
    ${dxp5}    Create New Dynamic Xpath    ${ts_date_row}    Umesh
    Wait Until Element Is Visible    ${dxp5}
    Mouse Over    ${dxp5}


User Adds Overtime Activity To The TS
    Wait Until Element Is Visible    ${btn_add_new_activity}
    Click Button    ${btn_add_new_activity}
    Wait Until Element Is Visible    ${select_activity_drop_down}
    Click Element    ${select_activity_drop_down}
    ${dxp7}    Create New Dynamic Xpath    ${select_specific_activity}    Break
    Wait Until Element Is Visible    ${dxp7}
    Click Element    ${dxp7}
    Wait Until Element Is Visible    ${activity_start_time}
    Click Element    ${activity_start_time}
    ${dxp8}    Create New Dynamic Xpath    ${txt_input_hrs}    1
    Wait Until Element Is Visible    ${dxp8}
    Input Text    ${dxp8}    01
    ${dxp9}    Create New Dynamic Xpath    ${txt_input_mins}    1
    Wait Until Element Is Visible    ${dxp9}
    Input Text    ${dxp9}    00
    Wait Until Element Is Visible    ${activity_end_time}
    Click Element    ${activity_end_time}
    ${dxp10}    Create New Dynamic Xpath    ${txt_input_hrs}    2
    Wait Until Element Is Visible    ${dxp10}
    Input Text    ${dxp10}    02
    ${dxp11}    Create New Dynamic Xpath    ${txt_input_mins}    2
    Wait Until Element Is Visible    ${dxp11}
    Input Text    ${dxp11}    00
    Wait Until Element Is Visible    ${btn_save}
    Click Button    ${btn_save}

Added Activity Should Be Visible In The Activity List Of TS
    ${dxp12}    Create New Dynamic Xpath    ${activity_entry}    Break
    Wait Until Element Is Visible    ${dxp12}