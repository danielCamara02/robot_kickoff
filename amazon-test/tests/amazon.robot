*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${AMAZON_SEARCH_BAR_TEXT_FIELD}    id:twotabsearchtextbox
${AMAZON_SEARCH_BUTTON}            id:nav-search-submit-button

*** Keywords ***
Open Amazon    
    Open Browser    https://www.amazon.com    chrome

Search
    [Arguments]    ${search_text}
    Input Text     ${AMAZON_SEARCH_BAR_TEXT_FIELD}    ${search_text}

Click Amazon search
    Click Element    ${AMAZON_SEARCH_BUTTON}


*** Test Cases ***
Search for 'The Hobbit' book in Amazon web site
    Open Amazon
    Search    The Hobbit
    Click Amazon search
    Close Browser
    