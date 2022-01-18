*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Calling Keyword
    ${url_browser} =    create list    https://www.amazon.in/  chrome
    Test1       ${url_browser}

*** Keywords ***
Test1
    [Arguments]     ${url_browser}
    [Documentation]    Testing
    open browser    ${url_browser}[0]   ${url_browser}[1]
    sleep    1
    close all browsers