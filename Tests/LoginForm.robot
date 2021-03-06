*** Settings ***
Resource  ../Resourses/Common.robot
Resource  ../Resourses/PO/LoginPage.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Test Cases ***
Anonymous user gets redirected to Log In page
    [Documentation]  Sign in page should be loaded
    [Tags]  Smoke
    Open Log In Page
    Sign In Page is Loaded
Log in as existing user
    [Documentation]  User can log in and log off successfully
    [Tags]  Smoke
    Input login and password  licenseportalqa+admin@gmail.com  qweasd123
    Click Sign in
    Home Page Loaded
    Click Log Off
    Sign In Page is Loaded
Log in with incorrect login and password
    [Documentation]  User cannot login with incorrect login and password
    [Tags]  Smoke
    Input login and password  licenseportalqa+admin@gmail.com  123456
    Click Sign in
    Error Message is Shown
    Input login and password  artur@gmail.com  qweasd123
    Click Sign in
    Error Message is Shown
    Input login and password  ${EMPTY}  qweasd123
    Click Sign in
    Error Message is Shown
    Input login and password  licenseportalqa+admin@gmail.com  ${EMPTY}
    Click Sign in
    Error Message is Shown
    Input login and password  ${EMPTY}  ${EMPTY}
    Click Sign in
    Error Message is Shown




