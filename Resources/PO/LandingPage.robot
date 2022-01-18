*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to   ${URL}

Verify Page Loaded
    maximize browser window
    capture page screenshot    ${OUTPUTDIR}/id_image_id-1.png
    wait until page contains element    //a[@aria-label='Amazon']

