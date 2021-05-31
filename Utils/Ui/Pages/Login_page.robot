*** Variables ***
${REG_FORM}                  id:create-account_form
${LOGIN_FORM}                id:login_form
${CREATE_ACCOUNT_BUTTON}     id:SubmitCreate
${SIGN_IN_BUTTON}            id:SubmitLogin
${EMAIL_FIELD}               id:email_create
${EMAIL_FIELD_LOGIN}         id:email
${PASSWD_FIELD_LOGIN}        id:passwd

${TIMEOUT_SHORT}    15

*** Keywords ***
Wait Registration Load
    [Documentation]    Wait Registration Load
    Wait Until Element Is Visible   ${REG_FORM}      ${TIMEOUT_SHORT}

Wait Log In Load
    [Documentation]    Wait Log In Load
    Wait Until Element Is Visible   ${LOGIN_FORM}      ${TIMEOUT_SHORT}

Click Create Account Button
    [Documentation]    Click Create Account Button
    Wait Until Element Is Visible   ${CREATE_ACCOUNT_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${CREATE_ACCOUNT_BUTTON}

Click Sign In Button
    [Documentation]    Click Sign In Button
    Wait Until Element Is Visible   ${SIGN_IN_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${SIGN_IN_BUTTON}

Fill In Email To Create
    [Documentation]    Fill In Email To Create
    ...                {TEST_EMAIL} -> str
    [Arguments]  ${TEST_EMAIL}
    Wait Until Element Is Visible   ${EMAIL_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${EMAIL_FIELD}    ${TEST_EMAIL}

Fill In Email Login
    [Documentation]    Fill In Email Login
    ...                {TEST_EMAIL_LOGIN} -> str
    [Arguments]  ${TEST_EMAIL_LOGIN}
    Wait Until Element Is Visible   ${EMAIL_FIELD_LOGIN}      ${TIMEOUT_SHORT}
    Input Text    ${EMAIL_FIELD_LOGIN}    ${TEST_EMAIL_LOGIN}

Fill In Password Login
    [Documentation]    Fill In Password Login
    ...                {TEST_PASSWD_LOGIN} -> str
    [Arguments]  ${TEST_PASSWD_LOGIN}
    Wait Until Element Is Visible   ${PASSWD_FIELD_LOGIN}      ${TIMEOUT_SHORT}
    Input Text    ${PASSWD_FIELD_LOGIN}    ${TEST_PASSWD_LOGIN}
