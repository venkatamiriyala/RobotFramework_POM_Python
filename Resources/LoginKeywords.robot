*** Settings ***
Library         SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open My Application
    [Arguments]    ${SiteUrl}   ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    maximize browser window

Enter User Name
    [Arguments]    ${userName}
    input text    ${txt_loginUserName}  ${username}


Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}  ${password}

Click SignIn
    click button    ${btn_signIn}

Verify Successful Login
    Title Should Be    Find a Flight: Mercury Tours:

Close Browsers
    Close All Browsers
