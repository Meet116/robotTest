*** Settings ***
Resource          ../../Data/web/locators.robot

*** Keywords ***
User opens eCareVault Login Page
    Open eCareVault Login Page

User "${username}" logs in
    Enter username    ${username}
    Click Submit "${USERNAME_SUBMIT_BUTTON}"

User waits to load page
    Wait for page to load

Click Submit "${username_submit_button}"
    Double Click Element    ${username_submit_button}
    Set Selenium Implicit Wait    30 seconds

User scroll down to element "${password_field}"
    scroll down to Element ${password_field}

User enter password "${password}"
    Enter Password    ${password}

User enter vault key "${vaultKey}"
    Enter Vault    ${vaultKey}

user click signin
    Click Signin

user click on submit
    Click Submit vault

user name "${textValue}" should be displayed
    Check element ${usernameOnDashboard} should contain text ${textValue}
    Set Selenium Implicit Wait    30 seconds

error message "${errorMessage}" should be displayed
    Check text ${errorMessage} avilable on locator ${wrongCredentialError}

Enter username
    [Arguments]    ${username}
    Input Text    ecv-email-default    ${username}

Click Signin
    Double Click Element    ${SIGNIN_BUTTON}
    Set Selenium Implicit Wait    30 seconds

Submit Credentials
    Click Button    login_button

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_FIELD}    ${password}

Enter Vault
    [Arguments]    ${vaultKey}
    Input Password    ${VAULTKEY_FIELD}    ${vaultKey}

Click Submit vault
    Double Click Element    ${VAULTKEY_SUBMIT_BUTTON}
    Set Selenium Implicit Wait    90 seconds

User clicks on Login with Google
    Click Element       ${LOGIN_WITH_GOOGLE_ELEMENT}

User move to the google sign in window
    Select Window       locator=NEW
    Set Selenium Implicit Wait      20 seconds

User enters username ${googleUsername}
    Input Text      ${GOOGLE_LOGIN_USERNAME_FIELD}       ${googleUsername}

User clicks on Next Button
    Click Element    ${NEXT_BUTTON}

User enters google password ${google_Password}
    Input Text      ${GOOGLE_PASSWORD_FIELD}       ${google_Password}   

User clicks on Next Button on Password Screen
    Click Element    ${PASSWORD_NEXT_BUTTON}
    Set Selenium Implicit Wait      20 seconds

User clicks on Allow Access
    Click Element    ${ALLOW_ACCESS}

User move to the ecare vault window
    Select Window       title:eCareVault
    Set Selenium Implicit Wait      20 seconds