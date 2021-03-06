*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Log In Page
    Go To  http://nxlicensed.hdw.mx/nxlicensed/
Sign In Page is Loaded
    Element Should Be Visible  xpath=//*[text()[contains(.,'${TEXT_CONFIRMING_CORRECT_PAGE}')]]
Input login and password
    [Arguments]  ${CORRECT EMAIL}  ${CORRECT PASSWORD}
    Input Text  xpath=//*[@id="id_email"]  ${CORRECT EMAIL}
    Input Text  xpath=//*[@id="id_password"]  ${CORRECT PASSWORD}
Click Sign in
    Click Button  xpath=/html/body/div/div/div/div[2]/form/button
Home Page Loaded
    Element Should Be Visible  xpath=//*[text()[contains(.,'${HOME PAGE TEXT}')]]
Click Log Off
    Click Link  xpath=//*[@id="bs-example-navbar-collapse-1"]/p/a
Error Message is Shown
    Element Should Be Visible  xpath=//div[@class='alert alert-danger']
Invalid Login Scenarios
    [Arguments]  ${CORRECT EMAIL}  ${CORRECT PASSWORD}
    Go To  http://nxlicensed.hdw.mx/nxlicensed/
    Input Text  xpath=//*[@id="id_email"]  ${CORRECT EMAIL}
    Input Text  xpath=//*[@id="id_password"]  ${CORRECT PASSWORD}
    Click Button  xpath=/html/body/div/div/div/div[2]/form/button
    Element Should Be Visible  xpath=//div[@class='alert alert-danger']

*** Variables ***
${TEXT_CONFIRMING_CORRECT_PAGE} =  Sign in
${CORRECT EMAIL} =  licenseportalqa+admin@gmail.com
${CORRECT PASSWORD} =  qweasd123
${HOME PAGE TEXT} =  Nx Licensing Server
${INCORRECT EMAIL} =  artur@gmail.com
${INCORRECT PASSWORD} =  123456
