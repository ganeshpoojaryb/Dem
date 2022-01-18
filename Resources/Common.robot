*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}

End Web Test
    close all browsers

Inserting Data in DB
    log to console    Inserting data into DB

Deleting Created data
    log to console    Deleting created data in DB