*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Google Chrome
    Open Browser    https://www.google.com.br    chrome

Open Amazon    
    Open Browser    https://www.amazon.com.br    chrome

*** Test Cases ***
Example test 1 - opening chrome site
   Open Google Chrome 
    Close Browser

Example test 2 - opening amazon web site
    Open Amazon
    Close Browser
