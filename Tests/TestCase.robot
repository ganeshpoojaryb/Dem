*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/Amazon.robot  # necessary for lower level keywords in test cases
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

${BROWSER} =    chrome
${URL} =    https://www.amazon.in
${SEARCH_TERM} =    nokia mobile

*** Test Cases ***
#Test1
#    Amazon.Search for Products

Test2
    Amazon.Search for Products
    Amazon.Select product form Search Results
    Amazon.Add product to Cart
    Amazon.Chekout


