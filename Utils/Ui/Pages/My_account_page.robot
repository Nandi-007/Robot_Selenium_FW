*** Variables ***
${HEADER_TITLE}                 class:page-heading
${HEADER_TITLE_STRING}          MY ACCOUNT

${TIMEOUT_SHORT}    15

*** Keywords ***
My Account Page Loaded
    [Documentation]    Validate that My Account Page Loaded
    Wait Until Element Is Visible   ${HEADER_TITLE}      ${TIMEOUT_SHORT}
    ${Title}    Get Text    ${HEADER_TITLE}
    Should Be Equal As Strings    ${Title}    ${HEADER_TITLE_STRING}
