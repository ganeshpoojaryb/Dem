*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains element    id=ap_email