*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
TestKeywordNavigation
    Open Browser    https://google.ca    gc
    Maximize Browser Window
    ${urlAdd}    Get Location
    Log    ${urlAdd}
    Sleep    3
    Go To    https://www.videotron.com
    Maximize Browser Window
    ${urlAdd}    Get Location
    Log    ${urlAdd}
    Sleep    3
    Go Back   
    ${urlAdd}    Get Location
    Log    ${urlAdd}
    Sleep    3

    Close All Browsers
*** Keywords ***