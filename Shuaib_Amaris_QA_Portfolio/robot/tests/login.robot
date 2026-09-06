*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://www.saucedemo.com/    chrome
Suite Teardown    Close All Browsers
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
Valid Login
    Input Text    id:user-name    standard_user
    Input Text    id:password     secret_sauce
    Click Button    id:login-button
    Location Should Contain    inventory

Invalid Login
    Input Text    id:user-name    invalid_user
    Input Text    id:password     wrong_password
    Click Button    id:login-button
    Page Should Contain    Username and password do not match
