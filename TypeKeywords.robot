*** Settings ***
Resource    .//Ressources/Ressource1.robot

*** Test Cases ***
TestLogin
    Se connecter a salesforce
    Remplir formulaire Login 
    Fermer le navigateur    

