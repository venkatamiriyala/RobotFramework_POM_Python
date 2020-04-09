*** Settings ***
Library     SeleniumLibrary
Resource        ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://www.newtours.demoaut.com

*** Test Cases ***

Registration Test
    Open My Application    ${SiteUrl}   ${Browser}
    Click Register Link
    Enter User Details
    Click Submit
    Verify Successful Registrations
    Close My Browsers

