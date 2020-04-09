*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open My Application
    [Arguments]    ${SiteUrl}   ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    maximize browser window

Click Register Link
    click link    ${link_Reg}

Enter User Details
    input text  ${txt_firstName}    ravi
    input text    ${txt_lastName}   miriyala
    input text    ${txt_phone}  02020202020
    input text    ${txt_email}  test@test.com
    input text    ${txt_loginUserName}  test@test.com
    input text    ${txt_add1}   13 find
    input text    ${txt_city}   sydney
    input text    ${txt_postCode}   27676
    input text    ${txt_password}   test1234
    input text    ${txt_confirmPaddword}    test1234
    input text    ${txt_state}  nsw

Click Submit
    click button    ${btn_submit}

Verify Successful Registrations
    page should contain    Thank you for registering.

Close my browsers
    close all browsers
