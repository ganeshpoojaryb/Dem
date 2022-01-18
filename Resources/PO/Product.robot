*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    set selenium timeout    15
    wait until page contains    Back to results

Add to Cart
    click button    add-to-cart-button