*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}   https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***

Handle JS Alert
    Open Browser  ${URL}  chrome
    Click Button  //button[text()="Click for JS Alert"]
    Sleep  2s
    Handle Alert  action=ACCEPT
    Sleep  2s
    Close Browser