*** Variables ***
${wrongCredentialError}      xpath://*[@id="login-container"]/div[3]/div[5]/div/div[3]/span[1]/p
${PASSWORD_FIELD}            id:ecv-login-password
${USERNAME_SUBMIT_BUTTON}    xpath://*[@id="login-container"]/div[3]/div[4]/div/div/button
${SIGNIN_BUTTON}             xpath://*[@id="login-container"]/div[3]/div[5]/div/div[3]/div/button
${usernameOnDashboard}       xpath://*[@id="step4_container"]/a/span/div
${VAULTKEY_FIELD}            id:password
${VAULTKEY_SUBMIT_BUTTON}    id:submit
${LOGIN_WITH_GOOGLE_ELEMENT}    id:gglCustomBtn
${GOOGLE_LOGIN_USERNAME_FIELD}      id:identifierId
${NEXT_BUTTON}               id:identifierNext
${GOOGLE_PASSWORD_FIELD}           name:password
${PASSWORD_NEXT_BUTTON}             id:passwordNext
${ALLOW_ACCESS}                 id:submit_approve_access