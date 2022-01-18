*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains    results for "${SEARCH_TERM}"

Click Product Link
    click link    (//div[@class='a-section']//a)[2]
#    set selenium speed    5
    ${handles}=  Get Window Handles
#    set selenium speed    0
    Switch Window   ${handles}[1]
    ${title} =    get title
    log    ${title}