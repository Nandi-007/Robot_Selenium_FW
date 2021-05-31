*** Variables ***
${PRODUCT_NAME}                     xpath:/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[2]/p/a
${PRODUCT_COUNT}                    xpath:/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[5]/input[2]
${PRODUCT_PRICE}                    xpath:/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[4]
${DELETE_ICON}                      xpath:/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a/i
${CHART_EMPTY}                      xpath:/html/body/div/div[2]/div/div[3]/div/p
${CHART_EMPTY_TEXT}                 Your shopping cart is empty.
${TOTAL_PRICE}                      xpath://*[@id="total_price"]
${CHART_HEADER_TITLE}               class:navigation_page
${CHART_HEADER_TITLE_STRING}        Your shopping cart
${CHECKOUT_BUTTON}                  xpath:/html/body/div/div[2]/div/div[3]/div/p[2]/a[1]
${PROCEED_CHECKOUT_BUTTON}          xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
${TERM_SERVICES_BOX}                xpath:/html/body/div/div[2]/div/div[3]/div/div/form/div/p[2]/div/span/input
${PROCEED_TO_PAYMENT_BUTTON}        xpath:/html/body/div/div[2]/div/div[3]/div/div/form/p/button
${PAY_BY_BANK_WIRE}                 xpath:/html/body/div/div[2]/div/div[3]/div/div/div[3]/div[1]/div/p
${CONFIRMATION_BUTTON}              xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button
${ORDER_COMPLETE}                   xpath:/html/body/div/div[2]/div/div[3]/div/div/p/strong
${ORDER_COMPLETE_TEXT}              Your order on My Store is complete.


${TIMEOUT_SHORT}    15

*** Keywords ***
Order Complete
    [Documentation]    Validates Order Complete text
    Wait Until Element Is Visible   ${ORDER_COMPLETE}      ${TIMEOUT_SHORT}
    ${Name}    Get Text    ${ORDER_COMPLETE}
    Should Be Equal    ${ORDER_COMPLETE_TEXT}    ${Name}

Chart Is Empty
    [Documentation]    Validates if the chart is empty
    Wait Until Element Is Visible   ${CHART_EMPTY}      ${TIMEOUT_SHORT}
    ${Name}    Get Text    ${CHART_EMPTY}
    Should Be Equal    ${CHART_EMPTY_TEXT}    ${Name}

Click Confirmation Button
    [Documentation]    Click the Confirmation button
    Wait Until Element Is Visible   ${CONFIRMATION_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${CONFIRMATION_BUTTON}

Click Checkout Button
    [Documentation]    Click Checkout Button
    Wait Until Element Is Visible   ${CHECKOUT_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${CHECKOUT_BUTTON}

Click Proceed Checkout Button
    [Documentation]    Click Proceed Checkout Button
    Wait Until Element Is Visible   ${PROCEED_CHECKOUT_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${PROCEED_CHECKOUT_BUTTON}

Click Proceed To Payment Button
    [Documentation]    Click Proceed To Payment Button
    Wait Until Element Is Visible   ${PROCEED_TO_PAYMENT_BUTTON}      ${TIMEOUT_SHORT}
    Click Element    ${PROCEED_TO_PAYMENT_BUTTON}

Click Pay Bank Wire Button
    [Documentation]    Click Pay Bank Wire Button
    Wait Until Element Is Visible   ${PAY_BY_BANK_WIRE}      ${TIMEOUT_SHORT}
    Click Element    ${PAY_BY_BANK_WIRE}

Product Name Should Be
    [Documentation]    Product Name Should Be equal to {Expected_name} variable
    ...                {Expected_name} -> str
    [Arguments]    ${Expected_name}
    Wait Until Element Is Visible   ${PRODUCT_NAME}      ${TIMEOUT_SHORT}
    ${Name}    Get Text    ${PRODUCT_NAME}
    Should Be Equal    ${Expected_name}    ${Name}

Product Count Should Be
    [Documentation]    Product Count Should Be equal to {Expected_count} variable
    ...                {Expected_count} -> str
    [Arguments]    ${Expected_count}
    Wait Until Element Is Visible   ${PRODUCT_COUNT}      ${TIMEOUT_SHORT}
    ${Count}    Get Value    ${PRODUCT_COUNT}
    Should Be Equal    ${Expected_count}    ${Count}

Product Price Should Be
    [Documentation]    Product Price Should Be equal to {Expected_price} variable
    ...                {Expected_price} -> str
    [Arguments]    ${Expected_price}
    Wait Until Element Is Visible   ${PRODUCT_PRICE}      ${TIMEOUT_SHORT}
    ${Price}    Get Text    ${PRODUCT_PRICE}
    Should Be Equal    ${Expected_price}    ${Price}

Shopping Chart Loaded
    [Documentation]    Validate that the Shopping Chart Loaded
    Wait Until Element Is Visible   ${CHART_HEADER_TITLE}      ${TIMEOUT_SHORT}
    ${Title}    Get Text    ${CHART_HEADER_TITLE}
    Should Be Equal As Strings    ${Title}    ${CHART_HEADER_TITLE_STRING}

Delete Item
    [Documentation]    Click the Delete icon
    Wait Until Element Is Visible   ${DELETE_ICON}      ${TIMEOUT_SHORT}
    Click Element    ${DELETE_ICON}

Get Total Price
    [Documentation]    return the total price
    ...                return: Number -> str
    Wait Until Element Is Visible   ${TOTAL_PRICE}      ${TIMEOUT_SHORT}
    ${Number}    Get Text    ${TOTAL_PRICE}
    [Return]    ${Number}

Total Price Is Updated
    [Documentation]    validates that Total Price Is Updated
    ...                {Previous} -> str
    [Arguments]    ${Previous}
    Wait Until Element Is Visible   ${TOTAL_PRICE}      ${TIMEOUT_SHORT}
    ${New_num}    Get Text    ${TOTAL_PRICE}
    Should Be Equal 	${New_num}  ${Previous}

Fill In Term Services Box
    [Documentation]    Fill In Term Services Box
    Click Element    ${TERM_SERVICES_BOX}
