*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://bugeater.web.app/
&{login_standard_user}  email=standard_user  password=secret_sauce

*** Test Cases ***
Open Browser & 1st test case
    Open Browser  ${URL}  chrome

    Maximize Browser Window

    Click Element  //a[@href="/app/list"]
    Sleep  1s

    Click Button  (//button[@type="button"])[4]
    Sleep  2s

    Click Link  //a[@href="/app/challenge/learn/adder"]
    Sleep  2s

    Click Button  //button[@data-test-id="button-primary"]
    Sleep  1s

    Click Button  //button[@data-test-id="button-primary"]
    Sleep  1s

    Click Button  //button[@data-test-id="button-primary"]
    Sleep  1s

    Click Button  //button[@data-test-id="button-primary"]
    Sleep  1s

    Click Button  //button[@data-test-id="button-primary"]
    Sleep  1s

    Click Link  //a[@id="videoLink"]
    Sleep  2s

    Switch Window
    # Close Window
    # Close Browser
   


case #1.1
    Open Browser  ${URL}  chrome

    Maximize Browser Window

    Click Element  //a[@href="/app/list"]
    Sleep  1s

    Click Button  (//button[@type="button"])[4]
    Sleep  2s

    ####
    Click Link  //a[@href="/app/challenge/learn/adder"]
    Sleep  2s
    Click Element  //button[@data-test-id="button-skip"]
    Sleep  2s
    ####


    #1
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  1
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  2
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #2
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  -2
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  4
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #3
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  1.5
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  2.5
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #4
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  abc
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  1
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #5
    Sleep  1s
    # Input Text  //input[@placeholder="First Number"]  
    # Sleep  1s
    # Input Text  //input[@placeholder="Second Number"]  4
    # Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #6
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  10000000000
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  1
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s
    Click Element  //a[@href="/app/challenge/learn/divider"]
    Close Browser



case #1.2
    
    #1
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  4
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  2
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #2
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  -10
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  2
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #3
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  5
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  2
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #4
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  abc
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  1
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #5
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s

    #6
    Sleep  1s
    Input Text  //input[@placeholder="First Number"]  10
    Sleep  1s
    Input Text  //input[@placeholder="Second Number"]  0
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  2s
    Click Element  //a[@href="/app/challenge/learn/passwordRestore"]
    # Close Browser

case #1.3
    #1
    Sleep  1s
    Input Password  //input[@placeholder="New Password"]  P@ssw0rD
    Sleep  1s
    Click Button  //button[@type="submit"]

    #2
    Sleep  1s
    Input Password  //input[@placeholder="New Password"]  hElloW0rld
    Sleep  1s
    Click Button  //button[@type="submit"]

    #3
    Sleep  1s
    Input Password  //input[@placeholder="New Password"]  Passw0rd!7
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #4
    Click Button  //button[@type="submit"]
    Sleep  2s    

    #5 
    Input Password  //input[@placeholder="New Password"]  Mo7%
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #6 
    Input Password  //input[@placeholder="New Password"]  asdfghjklpoiuytrewq
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #7 
    Input Password  //input[@placeholder="New Password"]  ONLYCAPITAL
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #8 
    Input Password  //input[@placeholder="New Password"]  onlylower
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #9 
    Input Password  //input[@placeholder="New Password"]  001122
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #10 
    Input Password  //input[@placeholder="New Password"]  @@@@@
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s

    #11
    Input Password  //input[@placeholder="New Password"]  Κωδικός
    Sleep  1s
    Click Button  //button[@type="submit"]
    Sleep  1s    
    Click Element  //a[@href="/app/challenge/learn/updateNickname"]



case 2
    Open Browser  ${URL}  Safari
    # Create Webdriver  Safari
    # Go to  ${URL}
