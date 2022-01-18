*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    wait until page contains element    //*[@id="attachDisplayAddBaseAlert"]/span

Proceed to Checkout
      capture element screenshot    //*[@id="attach-sidesheet-checkout-button"]/span/input    ${OUTPUTDIR}/id_image_id-1.png
      click button    //*[@id="attach-sidesheet-checkout-button"]/span/input
