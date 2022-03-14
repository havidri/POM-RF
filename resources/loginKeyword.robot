*** Settings ***
Library                SeleniumLibrary
Variables              swagLocator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go To Swaglabs page
    Go To                https://www.saucedemo.com/

I am inputing invalid Username
    Input Text                        ${txtUsername}        standard_user1

I am inputing valid Username
    Input Text                       ${txtUsername}        standard_user

I am inputing invalid Password    
    Input Text                       ${txtPassword}        secret_sauce1

I am inputing valid Password
    Input Text                       ${txtPassword}        secret_sauce

I am click login button
    Click Element                    ${btnLogin}

Message error Username is required
    Element Should Be Visible        ${errorMessageRequired}
    Page Should Contain              Epic sadface: Username is required

Message error Password is required
    Element Should Be Visible        ${errorMessageRequired}
    Page Should Contain               Epic sadface: Password is required

Massage error Username Password not match
    Element Should Be Visible        ${errorMessageRequired}
    Page Should Contain                Epic sadface: Username and password do not match any user in this service

Dashboard page will be appears on the screen
    Element Should Be Visible        ${dashboardPage}
    Element Should Contain           ${dashboardPage}        PRODUCTS
