*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select product form Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Chekout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

