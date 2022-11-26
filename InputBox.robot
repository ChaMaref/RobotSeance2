Library    SeleniumLibrary
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url1}     https://login.salesforce.com/ 
${browser}    gc
${username}    admin
${password}    123456
*** Test Cases ***
testInputBox
    Open Browser    ${url1}    ${browser}  
    Maximize Browser Window
    Element Should Be Visible    xpath://input[@id='username'] 
    Element Should Be Enabled    xpath://input[@id='username']    
    Input Text    xpath://input[@id='username']    ${username}
    Element Should Be Visible    xpath://input[@id='password']
    Element Should Be Enabled    xpath://input[@id='password'] 
    Input Password    xpath://input[@id='password']    ${password}
    Sleep    4
    Clear Element Text    xpath://input[@id='username'] 
    Sleep    3
    Close Browser


*** Keywords ***