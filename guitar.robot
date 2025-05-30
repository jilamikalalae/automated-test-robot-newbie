*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.google.com/
${TEXT}  Greenmoons


*** Test Cases ***
Open Browser
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    # ${current_url}=   Get Location
    # Log To Console    Current URL: ${current_url}
    # Log Location
    Location Should Be  ${URL}
    
    Input Text  //*[@id="APjFqb"]  ${TEXT}
    Sleep    2s    
    Click Element    (//li[@data-view-type="1"])[1]
    Sleep    3s
    
    Close Browser