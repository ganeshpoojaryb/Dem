*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text    twotabsearchtextbox       ${SEARCH_TERM}

Submit Search
    click button    nav-search-submit-button
