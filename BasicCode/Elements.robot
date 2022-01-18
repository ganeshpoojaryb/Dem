*** Settings ***
Library    SeleniumLibrary
Library     OperatingSystem
Library    Collections
Test Setup     open browser    ${URL}  ${BROWSER}
Test Teardown   close all browsers


*** Variables ***
#${URL}  https://www.techlistic.com/p/selenium-practice-form.html
#${URL}  http://webdriveruniversity.com/Popup-Alerts/index.html
#${URL}  http://webdriveruniversity.com/IFrame/index.html
${URL}  https://www.amazon.in/



${BROWSER}  chrome

*** Test Cases ***
Test1
    [Documentation]    Looping
    [Tags]    Sanity
    ${device} =    set variable    Nokia Mobile
    maximize browser window
    set selenium implicit wait    10
    input text    twotabsearchtextbox    ${device}
    click element    nav-search-submit-button
    set selenium timeout    10
    wait until page contains    results for "${device}"
    @{lst} =    create list
    @{allDevice} =    get webelements    //a[@class="a-link-normal s-link-style a-text-normal"]
    FOR     ${one}    IN    @{allDevice}
        ${name} =    get text    ${one}
        Append to list      ${lst}      ${name}
    END
    log    ${lst}

#    //a[@class="a-link-normal s-link-style a-text-normal"]

#    ${BROWSER}      Set Variable        chrome
#    click element    //*[contains(text(),'JavaScript Confirm Box')]/..//span
#     sleep    3
#     ${message} =    handle alert   accept
#     [Return]    ${message}
#     scr


#    select frame    frame
#    click button    //button[@id="button-find-out-more"]
#    ${message} =    get element attribute    //div[@class="modal-body"]//p    outerhtml
#    log    ${message}
#    checkbox should not be selected

#    input text    firstname     fname
#    input text    lastname      lname
#    select radio button    sex    Male
#    select radio button    exp    5
#    checkbox should be selected     //input[@name='profession' and @value='Manual Tester']
#    select checkbox    //input[@name='profession' and @value='Manual Tester']
#    checkbox should be selected    //input[@name='profession' and @value='Manual Tester']
#    select from list by label    continents     Australia
#    wait until element is enabled    photo
#    handle alert
#    choose file     photo   E:\\RobotFrame\\upload\\file.txt
#    sleep    5
#Download PDF
#    # create unique folder
#    ${now}    Get Time    epoch
#    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
#    Create Directory    ${download directory}
#    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
#    ${disabled}    Create List    Chrome PDF Viewer
#    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
#    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
#    Create Webdriver    Chrome    chrome_options=${chrome options}
#    go to    http://localhost/download.html
#    Click Link    link    # downloads a file
#    # wait for download to finish
#    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}
#
#
#*** Keywords ***
#Download should be done
#    [Arguments]    ${directory}
#    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
#    ...
#    ...    Returns path to the file
#    ${files}    List Files In Directory    ${directory}
#    Length Should Be    ${files}    1    Should be only one file in the download folder
#    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp    Chrome is still downloading a file
#    ${file}    Join Path    ${directory}    ${files[0]}
#    Log    File was successfully downloaded to ${file}
#    [Return]    ${file}

