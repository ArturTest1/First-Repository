*** Settings ***
Resource  ../Resourses/Common.robot
Resource  ../Resourses/PO/LoginPage.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test
Test Template  Invalid Login Scenarios

*** Test Cases ***            EMAIL                              PASSWORD
Incorrect Password            ${CORRECT EMAIL}                   ${INCORRECT PASSWORD}
Incorrect email               ${INCORRECT EMAIL}                 ${CORRECT PASSWORD}
Empty emaiil                  ${EMPTY}                           ${CORRECT PASSWORD}
Empty Password                ${CORRECT EMAIL}                   ${EMPTY}
Empty login and password      ${EMPTY}                           ${EMPTY}


