*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           SeleniumLibrary
Resource          ../../Data/web/${env}/variables.robot

*** Keywords ***
Open eCareVault Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    eCareVault
   
Wait for page to load
    Set Selenium Implicit Wait    30 seconds

scroll down to Element ${elementName}
    Wait Until Element Is Visible    ${elementName}
    Scroll Element Into View    ${elementName}

Check text ${expectedText} avilable on locator ${locator}
    Element Text Should Be    ${locator}    ${expectedText}

Check element ${locator} should contain text ${textValue}
    Element Should Contain    ${locator}    ${textValue}
Take Screenshot
    Capture Page Screenshot     filename=eCareVault-screenshot-{index}.png