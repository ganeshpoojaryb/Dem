*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Library    Collections
Test Setup     open browser    ${URL}  ${BROWSER}
Test Teardown   close all browsers
Library    Collections

*** Variables ***
#${URL}  https://www.techlistic.com/p/selenium-practice-form.html
#${URL}  http://webdriveruniversity.com/Popup-Alerts/index.html
#${URL}  http://webdriveruniversity.com/IFrame/index.html
${URL}  https://testautomationpractice.blogspot.com/
${BROWSER}  chrome
${BOOK_NAME}    Master In Selenium

*** Test Cases ***
Testing
    WebTable Get Price of a book    ${BOOK_NAME}
#    ${price} =    WebTable Get Price of a book    ${BOOK_NAME}
#    log    ${price}

*** Keywords ***
WebTable Get Price of a book
    [Documentation]    WebTable- Get Price of a book
    [Tags]    Sanity
    [Arguments]    ${BOOK_NAME}
    maximize browser window
    set selenium implicit wait    10
    wait until page contains element    //table[@name="BookTable"]
    ${rows} =    get element count    //table[@name="BookTable"]//tr
    ${colums} =    get element count    //table[@name="BookTable"]//tr//th
    log    ${rows}
    log    ${colums}
    FOR    ${i}    IN    ${rows}
        FOR    ${j}    IN    ${colums}
            ${ele} =    get webelement    //table[@name="BookTable"]//tr[${i}]//td[${j}]
            ${val}    get text    ${ele}
            log    ${val}
#            IF    ${val} == ${BOOK_NAME}
#            ${price} =    get text    //table[@name="BookTable"]//tr[${i}]//td[4]
#            Exit For Loop IF    ${val} == "3000"
#            END
        END
    END
#    [Return]    ${price}


