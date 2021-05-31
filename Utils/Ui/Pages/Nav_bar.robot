*** Variables ***
${CONTACT_US}                     id:contact-link
${SIGN_IN}                        class:header_user_info
${SIGN_OUT}                       class:logout
${CHART_COUNT}                    xpath:/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/a/span[1]
${SHOPPING_CHART_BUTTON}          class:ajax_cart_quantity

${TIMEOUT_SHORT}    15

*** Keywords ***
Click Contact Us
    [Documentation]    Click Contact Us
    Wait Until Element Is Visible   ${CONTACT_US}      ${TIMEOUT_SHORT}
    Click Element    ${CONTACT_US}

Click Sign In
    [Documentation]    Click Sign In
    Wait Until Element Is Visible   ${SIGN_IN}      ${TIMEOUT_SHORT}
    Click Element    ${SIGN_IN}

Click Shopping Chart
    [Documentation]    Click Shopping Chart
    Wait Until Element Is Visible   ${SHOPPING_CHART_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${SHOPPING_CHART_BUTTON}

Sign Out Is Visible
    [Documentation]    Sign Out Is Visible
    Element Should Be Visible   ${SIGN_OUT}      ${TIMEOUT_SHORT}

Chart Count Is Updated
    [Documentation]    Chart Count Is Updated by one compated to previous given by argument.
    ...                {Previous} -> int
    [Arguments]    ${Previous}
    Wait Until Element Is Visible   ${CHART_COUNT}      ${TIMEOUT_SHORT}
    ${New_num}    Get Text    ${CHART_COUNT}
    ${Old_num}    Evaluate    ${Previous} + 1
    Should Be Equal As Integers 	${old_num}  ${New_num}

Get Chart Count
    [Documentation]    return the items in chart number
    ...                return: Number -> str
    Wait Until Element Is Visible   ${CHART_COUNT}      ${TIMEOUT_SHORT}
    ${Number}    Get Text    ${CHART_COUNT}
    [Return]    ${Number}
