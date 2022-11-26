*** Settings ***
Documentation    cette suite de test sert a prendre des captures d'ecran.
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
TestScreenshot
    Open Browser    https://login.salesforce.com/    gc
    Maximize Browser Window
    Input Text    xpath://input[@id='username']    admin
    Input Password    xpath://input[@id='password']    123456
    Click Button    xpath://input[@id='Login']
    Sleep    3
    Capture Page Screenshot    ./ScreenShot/pic.png
    Capture Element Screenshot    xpath://div[@id='error']    ./ScreenShot/MessageErreur.png
    Close Browser

*** Keywords ***    