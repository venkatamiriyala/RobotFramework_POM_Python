*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Tesing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    # setting the delay    to avoid browser delayes for the entire test
   set selenium speed    1seconds
    #Here sex is the name of the radio buttons and Female or Male are the values
    select radio button    sex  Female
    select radio button    exp  5
    select checkbox    BlackTea
    select checkbox    RedTea
    unselect checkbox    BlackTea
    select from list by label   continents  Asia
    #LIST BOX for multiple choices
    select from list by index    selenium_commands  2
    select from list by index    selenium_commands  3
    close browser

*** Keywords ***
