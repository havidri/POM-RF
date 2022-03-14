*** Settings ***
Resource               ../resources/loginKeyword.robot
Suite Setup            Open Browser Chrome
Suite Teardown         Close Browser

*** Test Cases ***
I am Login with invalid username and invalid password
    Go To Swaglabs page
    I am inputing invalid Username
    I am inputing invalid Password
    I am click login button
    Massage error Username Password not match

I am Login with valid username and invalid password
    Go To Swaglabs page
    I am inputing valid Username
    I am inputing invalid Password
    I am click login button
    Massage error Username Password not match

I am Login with invalid username and valid password
    Go To Swaglabs page
    I am inputing invalid Username
    I am inputing valid Password
    I am click login button
    Massage error Username Password not match

I am Login with valid username and empty password
    Go To Swaglabs page
    I am inputing valid Username
    I am click login button
    Message error Password is required

I am Login with empty username and empty password
    Go To Swaglabs page
    I am click login button
    Message error Username is required

I am Login with valid username and valid password
    Go To Swaglabs page
    I am inputing valid Username
    I am inputing valid Password
    I am click login button
    Dashboard page will be appears on the screen