*** Settings ***
Documentation     A test suite with a single test for New tab
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10
Suite Teardown    Close All Browsers

*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
New tab test
    Open Browser  chrome://newtab/  ${BROWSER}
    Input Text  //input[@name="username"]  jarroyo
    Input Text  //input[@name="password"]  ***
    Click Element  //input[@id="cp-login-submit-button"]
    Click Link  xpath=(//a[@href="#"])[5]
    Click Element  xpath=(//img)[131]
    Click Element  //div[@id="nav-button-clientanalytics"]
