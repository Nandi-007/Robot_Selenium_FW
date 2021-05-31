*** Variables ***
${CONTINUE}                       xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/span
${CONFIRM_OK}                     class:icon-ok
${SUCCESS_MSG}                    Product successfully added to your shopping cart
${SUCCESS_MSG_CONTAINER}          xpath:/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[1]/h2


${TIMEOUT_SHORT}    15

*** Keywords ***
Product Successfully Added
    [Documentation]    Handle Product Successfully Added noticifaction
    Wait Until Element Is Visible     ${CONFIRM_OK}      ${TIMEOUT_SHORT}
    ${Title}    Get Text    ${SUCCESS_MSG_CONTAINER}
    Should Be Equal As Strings    ${Title}    ${SUCCESS_MSG}
    Wait Until Element Is Visible     ${CONTINUE}      ${TIMEOUT_SHORT}
    Click Element    ${CONTINUE}