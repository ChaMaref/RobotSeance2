*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Se connecter a salesforce
    [Documentation]    Ce mot clé ouvre l'application salesforces
    Open Browser    https://login.salesforce.com/    gc
    Maximize Browser Window
Remplir formulaire Login 
    Input Text    xpath://input[@id='username']    admin
    Input Password    xpath://input[@id='password']    123456
    Click Button    xpath://input[@id='Login']
    Capture Page Screenshot    ./ScreenShot/pic.png
    Capture Element Screenshot    xpath://div[@id='error']    ./ScreenShot/MessageErreur.png
Fermer le navigateur   
    Sleep    3
    Close Browser
