*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://newtours.demoaut.com/
${user}     tutorial
${password}     tutorial

*** Test Cases ***
LoginTest
    Open Browser    ${SiteUrl}  ${Browser}
    Enter User Name    ${user}
    Enter Password    ${password}
    Click SignIn
    sleep    3
    Verify Successful Login
    close browsers