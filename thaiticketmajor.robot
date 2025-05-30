*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://www.thaiticketmajor.com/index.html
&{login}  email=  password=

*** Test Cases ***
case #1
    Open Browser  ${URL}  Safari
    Maximize Browser Window

    Click Element  //a[@href="/all-event/"]
    # Sleep  1s
    Click Element  //a[@href="/concert/"]
    # Sleep  1s
    Click Image  //img[@src="/img_poster/prefix_1/0123/6123/thailand-phil-2024-25-season-67f61ed707944-l.jpg"]
    Sleep  1s
    Click Element  //a[@data-button="7588"]
