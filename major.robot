*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}  https://www.majorcineplex.com/home
&{login}  email=  password=

*** Test Cases ***
case #1
    Open Browser  ${URL}  Safari
    Maximize Browser Window

    Click Element  //a[@href="/movie/lilo-stitch"]
    Click Element  id=view_showtime