*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Library    Collections

Test Setup     open browser    ${URL}  ${BROWSER}
Test Teardown   close all browsers


*** Variables ***
${URL}  https://www.amazon.in/
${BROWSER}  chrome
${DEVICE} =    Samsung Mobile

*** Test Cases ***
Test01
    ${val} =    Search a device and get all names in a list    ${DEVICE}
    log    ${val}
#    @{lst} =    create list     ${val}
#    list should contain value    @{lst}    Samsung Galaxy M32 5G
#    Search a device and get all names in a list    ${DEVICE}
#    log    ${val}
#    @{lst} =    create list    ${val}


*** Keywords ***
Search a device and get all names in a list
    [Documentation]    Search for a device and store all names in a list
    [Tags]    Sanity
    [Arguments]    ${DEVICE}
    maximize browser window
    set selenium timeout    15
    wait until page contains element    twotabsearchtextbox
    input text    twotabsearchtextbox    ${DEVICE}
    click element    nav-search-submit-button
    wait until page contains    results for "${DEVICE}"
    @{lst} =    create list
    @{allDevice} =    get webelements    //a[@class="a-link-normal s-link-style a-text-normal"]
    ${count}    get element count    //a[@class="a-link-normal s-link-style a-text-normal"]
    log    ${count}
    FOR     ${one}    IN    @{allDevice}
        ${name} =    get text    ${one}
        Append to list      ${lst}      ${name}
    END
    [Return]    @{lst}