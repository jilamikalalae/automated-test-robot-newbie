*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://shopee.co.th/m/payday-sale?gad_source=1&gad_campaignid=19798166808&gbraid=0AAAAADPpYO323kstx_nICghO9VvyA5xhR&gclid=CjwKCAjwi-DBBhA5EiwAXOHsGTdrZK01K_FBUrmj_nLqDKX7P3WgLzzPkvbQi-zMcOqGimt1_1mH3hoCJkYQAvD_BwE
&{login}  account=  password=

*** Test Cases ***
case 1
    Open Browser  ${URL}  safari
    Click Button  (//button[@class="shopee-button-outline shopee-button-outline--primary-reverse"])[1]

    Sleep  2s
    Input Text  //input[@name="loginKey"]  ${login.account}
    Input Password  //input[@type="password"]  ${login.password}

    Click Button  //button[@class="b5aVaf PVSuiZ Gqupku qz7ctP qxS7lQ Q4KP5g"]

# เข้าไปต่อบ่ได้ โดนดัก 