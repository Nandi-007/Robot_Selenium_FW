*** Variables ***
${PRODUCT_TILE}          class:content_price
${ADD_BUTTON}            xpath:/html/body/div/div[2]/div/div[2]/div/div[1]/ul[1]/li[1]/div/div[2]/div[2]/a[1]

${TIMEOUT_SHORT}    15

*** Keywords ***
Add Item From Popular
    [Documentation]    Add Item From Popular items, argument should be used to represent what item to be added. Atm not used.
    ...                {item_number} -> int
    #make it handle arg
    [Arguments]    ${item_number}
    Wait Until Element Is Visible   ${PRODUCT_TILE}      ${TIMEOUT_SHORT}
    @{products_listed} =   Get WebElements    ${PRODUCT_TILE}
    Scroll Element Into View    ${PRODUCT_TILE}
    Mouse Over    ${products_listed}[0]
    Click Element    ${ADD_BUTTON}    action_chain=True
