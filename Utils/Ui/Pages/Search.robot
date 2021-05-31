*** Variables ***
${SEARCH_BAR}             id:search_query_top
${SEARCH_BUTTON}          name:submit_search
${PRODUCT_TILE}           class:product-container

${TIMEOUT_SHORT}    15

*** Keywords ***
Search For Product
    [Documentation]    Search For Product
    ...                {Search_term} -> str
    [Arguments]    ${Search_term}
    Wait Until Element Is Visible   ${SEARCH_BAR}      ${TIMEOUT_SHORT}
    Input Text    ${SEARCH_BAR}    ${Search_term}
    Click Element    ${SEARCH_BUTTON}

Search Result Contains Items
    [Documentation]    Search Result Contains Items with name containing the iven argumet
    ...                {Search_term} -> str
    [Arguments]    ${Search_term}
    Wait Until Element Is Visible   ${PRODUCT_TILE}      ${TIMEOUT_SHORT}
    @{products_listed} =   Get WebElements    ${PRODUCT_TILE}
    FOR  ${item}  IN  @{products_listed}
        Should Contain    ${item.text}    ${Search_term}
    END