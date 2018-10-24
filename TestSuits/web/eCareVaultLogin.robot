*** Settings ***
Documentation     A sample test to see how robot works.
...               Author: SAGAR K.
...               This testsuit is functionally working.
Test Teardown     Close Browser
Resource          ../../PageResources/web/resource.robot
Resource          ../../PageResources/web/loginKeywords.robot

*** Test Cases ***
eCareVaultLoginSuccess
    [Tags]    regression    smoke   sanity
    Given User opens eCareVault Login Page
    When user "${USERNAME}" logs in
    And user waits to load page
    And User scroll down to element "${PASSWORD_FIELD}"
    And user enter password "${PASSWORD}"
    And user click signin
    And user enter vault key "${VAULTKEY}"
    And user click on submit
    Then user name "SK" should be displayed

*** Test Cases ***
eCareVaultLoginFailureWrongPassword
    [Tags]    regression    smoke
    Given User opens eCareVault Login Page
    When user "${USERNAME}" logs in
    And user waits to load page
    And User scroll down to element "${PASSWORD_FIELD}"
    And user enter password "password"
    And user click signin
    Then error message "Please try again or click on "Forgot your password"." should be displayed

*** Test Cases ***
eCareVaultLoginWithGoogleAccount
    [Tags]    regression    smoke
    Given User opens eCareVault Login Page
    And User clicks on Login with Google
    And User move to the google sign in window
    And User enters username ${googleUsername}
    And User clicks on Next Button
    And User scroll down to element "${GOOGLE_PASSWORD_FIELD}"
    And User enters google password ${googlePassword}
    And User clicks on Next Button on Password Screen
    # And User clicks on Allow Access
    And User move to the ecare vault window
    And user enter vault key "${VAULTKEY}"
    And user click on submit
    Then user name "SAGAR" should be displayed
    And Take Screenshot
