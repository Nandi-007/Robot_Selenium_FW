*** Settings ***
Resource          ../../../Utils/Resources/Common.robot
Suite Setup       Open Custom Browser
Suite Teardown    Close Browser

*** Variables ***
${search_term} =  Printed

*** Test Cases ***
Search01
    [Documentation]    Searching for products
    Search For Product    ${search_term}
    Search Result Contains Items    ${search_term}