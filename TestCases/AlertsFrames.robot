*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com
*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    #click OK /ACCEPT on the Alert
    click element    xpath://*[@id="HTML9"]/div[1]/button   #opens an alert
    sleep    3
    handle alert    accept
    #click Cancel/DISMISS on the Alert
    click element    xpath://*[@id="HTML9"]/div[1]/button   #opens an alert
    sleep    3
    handle alert    dismiss
    #Leave Allerts
    click element    xpath://*[@id="HTML9"]/div[1]/button   #opens an alert
    sleep    3
    handle alert    leave
    #Verify Alert window is displyed below Press a button is  a message from the alert window
    click element    xpath://*[@id="HTML9"]/div[1]/button   #opens an alert
    sleep    3
    alert should be present    Press a button!


    close browser
*** Keywords ***
