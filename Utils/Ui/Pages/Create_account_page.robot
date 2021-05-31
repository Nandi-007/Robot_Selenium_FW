*** Variables ***
${ACC_CREATION_FORM}               id:account-creation_form
${MALE}                            id:uniform-id_gender1
${FEMAIL}                          id:uniform-id_gender2
${FIRST_NAME_FIELD}                id:customer_firstname
${LAST_NAME_FIELD}                 id:customer_lastname
${EMAIL_FIELD}                     id:email
${PASSWD_FIELD}                    id:passwd
${YEAR_FIELD}                      id:years
${MONTH_FIELD}                     id:months
${DAY_FIELD}                       id:days
${SIGNUP_NEWSLETTER_FIELD}         id:newsletter
${SPECIAL_OFFER_FIELD}             id:optin
${ADDRESS_FIRST_NAME_FIELD}        id:firstname
${ADDRESS_LAST_NAME_FIELD}         id:lastname
${ADDRESS_COMPANY_FIELD}           id:company
${ADDRESS_ADDRESS_FIELD}           id:address1
${ADDRESS_ADDRESS_LINE2_FIELD}     id:address2
${ADDRESS_CITY_FIELD}              id:city
${ADDRESS_STATE_FIELD}             id:id_state
${ADDRESS_ZIP_CODE_FIELD}          id:postcode
${ADDRESS_COUNTRY_FIELD}           id:id_country
${ADDRESS_ADDITIONAL_INFO_FIELD}   id:other
${ADDRESS_PHONE_FIELD}             id:phone
${ADDRESS_MOBILE_FIELD}            id:phone_mobile
${ADDRESS_ALIAS_FIELD}             id:alias
${REGISTER_BUTTON}                 id:submitAccount

${TIMEOUT_SHORT}    15

*** Keywords ***
Wait Create Account Form
    [Documentation]    Wait Create Account Form
    Wait Until Element Is Visible   ${ACC_CREATION_FORM}      ${TIMEOUT_SHORT}

Fill In Title
    [Documentation]    Fill In Title
    ...                {SEX} -> str
    [Arguments]  ${SEX}
    Run Keyword If    '${SEX}' == 'Male'    Wait Until Element Is Visible   ${MALE}      ${TIMEOUT_SHORT}
    ...  ELSE  Wait Until Element Is Visible   ${FEMAIL}      ${TIMEOUT_SHORT}
    Run Keyword If    '${SEX}' == 'Male'    Click Element    ${MALE}
    ...  ELSE  Click Element    ${FEMAIL}

Fill In First Name
    [Documentation]    Fill In First Name
    ...                {TEST_FIRST_NAME} -> str
    [Arguments]  ${TEST_FIRST_NAME}
    Wait Until Element Is Visible   ${FIRST_NAME_FIELD}     ${TIMEOUT_SHORT}
    Input Text    ${FIRST_NAME_FIELD}    ${TEST_FIRST_NAME}

Fill In Last Name
    [Documentation]    Fill In Last Name
    ...                {TEST_LAST_NAME} -> str
    [Arguments]  ${TEST_LAST_NAME}
    Wait Until Element Is Visible   ${LAST_NAME_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${LAST_NAME_FIELD}    ${TEST_LAST_NAME}

Fill In Email
    [Documentation]    Fill In Email
    ...                {TEST_EMAIL} -> str
    [Arguments]  ${TEST_EMAIL}
    Wait Until Element Is Visible   ${EMAIL_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${EMAIL_FIELD}    ${TEST_EMAIL}

Fill In Password
    [Documentation]    Fill In Password
    ...                {TEST_PASSWD} -> str
    [Arguments]  ${TEST_PASSWD}
    Wait Until Element Is Visible   ${PASSWD_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${PASSWD_FIELD}    ${TEST_PASSWD}

Fill In Year
    [Documentation]    Fill In Year
    ...                {TEST_YEAR} -> str
    [Arguments]  ${TEST_YEAR}
    Wait Until Element Is Visible   ${YEAR_FIELD}      ${TIMEOUT_SHORT}
    Select From List By Value    ${YEAR_FIELD}    ${TEST_YEAR}

Fill In Month
    [Documentation]    Fill In Month
    ...                {TEST_MONTH} -> str
    [Arguments]  ${TEST_MONTH}
    Wait Until Element Is Visible   ${MONTH_FIELD}      ${TIMEOUT_SHORT}
    Select From List By Value    ${MONTH_FIELD}    ${TEST_MONTH}

Fill In Day
    [Documentation]    Fill In Day
    ...                {TEST_MONTH} -> str
    [Arguments]  ${TEST_MONTH}
    Wait Until Element Is Visible   ${DAY_FIELD}      ${TIMEOUT_SHORT}
    Select From List By Value    ${DAY_FIELD}    ${TEST_MONTH}

Fill In Sign Up Newsletter Box
    [Documentation]    Fill In Sign Up Newsletter Box
    Select Checkbox    ${SIGNUP_NEWSLETTER_FIELD}

Fill In Special Offer Box
    [Documentation]    Fill In Special Offer Box
    Select Checkbox    ${SPECIAL_OFFER_FIELD}

Fill In Address First Name
    [Documentation]    Fill In Address First Name
    ...                {TEST_FIRST_NAME} -> str
    [Arguments]  ${TEST_FIRST_NAME}
    Wait Until Element Is Visible   ${ADDRESS_FIRST_NAME_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_FIRST_NAME_FIELD}    ${TEST_FIRST_NAME}

Fill In Address Last Name
    [Documentation]    Fill In Address Last Name
    ...                {TEST_LAST_NAME} -> str
    [Arguments]  ${TEST_LAST_NAME}
    Wait Until Element Is Visible   ${ADDRESS_LAST_NAME_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_LAST_NAME_FIELD}    ${TEST_LAST_NAME}

Fill In Company
    [Documentation]    Fill In Company
    ...                {TEST_COMPANY} -> str
    [Arguments]  ${TEST_COMPANY}
    Wait Until Element Is Visible   ${ADDRESS_COMPANY_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_COMPANY_FIELD}    ${TEST_COMPANY}

Fill In Address First Line
    [Documentation]    Fill In Address First Line
    ...                {TEST_FIRST_LINE} -> str
    [Arguments]  ${TEST_FIRST_LINE}
    Wait Until Element Is Visible   ${ADDRESS_ADDRESS_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_ADDRESS_FIELD}    ${TEST_FIRST_LINE}

Fill In Address Second Line
    [Documentation]    Fill In Address Second Line
    ...                {TEST_LAST_LINE} -> str
    [Arguments]  ${TEST_LAST_LINE}
    Wait Until Element Is Visible   ${ADDRESS_ADDRESS_LINE2_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_ADDRESS_LINE2_FIELD}    ${TEST_LAST_LINE}

Fill In City
    [Documentation]    Fill In City
    ...                {TEST_CITY} -> str
    [Arguments]  ${TEST_CITY}
    Wait Until Element Is Visible   ${ADDRESS_CITY_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_CITY_FIELD}    ${TEST_CITY}

Fill In State
    [Documentation]    Fill In State
    ...                {TEST_STATE} -> str
    [Arguments]  ${TEST_STATE}
    #ENUM FOR STATE
    Select From List By Value    ${ADDRESS_STATE_FIELD}    1

Fill In Zip Code
    [Documentation]    Fill In Zip Code
    ...                {TEST_ZIP_CODE} -> str
    [Arguments]  ${TEST_ZIP_CODE}
    Wait Until Element Is Visible   ${ADDRESS_ZIP_CODE_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_ZIP_CODE_FIELD}    ${TEST_ZIP_CODE}

Fill In Country
    [Documentation]    Fill In Country
    ...                {TEST_COUNTRY} -> str
    [Arguments]  ${TEST_COUNTRY}
    Wait Until Element Is Visible   ${ADDRESS_COUNTRY_FIELD}      ${TIMEOUT_SHORT}
    #ENUM FOR COUNTRY
    Select From List By Value    ${ADDRESS_COUNTRY_FIELD}    21

Fill In Additional Info
    [Documentation]    Fill In Additional Info
    ...                {TEST_ADD_INFO} -> str
    [Arguments]  ${TEST_ADD_INFO}
    Wait Until Element Is Visible   ${ADDRESS_ADDITIONAL_INFO_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_ADDITIONAL_INFO_FIELD}    ${TEST_ADD_INFO}

Fill In Phone
    [Documentation]    Fill In Phone
    ...                {TEST_PHONE} -> str
    [Arguments]  ${TEST_PHONE}
    Wait Until Element Is Visible   ${ADDRESS_PHONE_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_PHONE_FIELD}    ${TEST_PHONE}

Fill In Mobile
    [Documentation]    Fill In Mobile
    ...                {TEST_MOBILE} -> str
    [Arguments]  ${TEST_MOBILE}
    Wait Until Element Is Visible   ${ADDRESS_MOBILE_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_MOBILE_FIELD}    ${TEST_MOBILE}

Fill In Address Alias
    [Documentation]    Fill In Address Alias
    ...                {TEST_ALIAS} -> str
    [Arguments]  ${TEST_ALIAS}
    Wait Until Element Is Visible   ${ADDRESS_ALIAS_FIELD}      ${TIMEOUT_SHORT}
    Input Text    ${ADDRESS_ALIAS_FIELD}    ${TEST_ALIAS}

Click Register Button
    [Documentation]    Click Register Button
    Wait Until Element Is Visible   ${REGISTER_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${REGISTER_BUTTON}
