*** Settings ***
Resource          ../../../Utils/Resources/Common.robot
Test Setup       Open Custom Browser
Test Teardown    Close Browser

*** Variables ***
${Prod_name} =     Faded Short Sleeve T-shirts
${Prod_Count} =    2
${Prod_Price} =    $16.51
${email_sufix} =   asdfasdf!@asdf.com

*** Test Cases ***
Chart01
    [Documentation]    Add products to cart from Popular tab on Home Page
    #make it handle product class objects for adding and price handling
    Add item
    Chart Count Is Updated    ${0}

    ${Chart_num} =    Get Chart Count
    Add item
    Chart Count Is Updated    ${Chart_num}

    Click Shopping Chart
    Shopping Chart Loaded
    #Use the item class name
    Product Name Should Be    ${Prod_name}
    Product Count Should Be    ${Prod_Count}
    Product Price Should Be    ${Prod_Price}

Chart02
    [Documentation]    Delete products from cart
    #make it handle product class objects for adding and price handling
    Add item
    Add item
    Click Shopping Chart
    Shopping Chart Loaded
    ${Total Price} =   Get Total Price
    Delete Item
    Total Price Is Updated    ${Total Price}
    Chart Is Empty

Chart03
    [Documentation]    Purchase products with bank wire
    #make it handle product class objects for adding and price handling
    Add item
    Click Shopping Chart
    Shopping Chart Loaded
    Click Checkout Button
    Register
    Click Proceed Checkout Button
    Fill In Term Services Box
    Click Proceed To Payment Button
    Click Pay Bank Wire Button
    Click Confirmation Button
    Order Complete

*** Keywords ***
Add item
    [Documentation]   Add 1 item to the shopping chart from Popular Tab, Validates if successfully added.
    Add Item From Popular    1
    Product Successfully Added

Register
    [Documentation]    Register James Bond within registration form, fills out only necessary information
    ${ran_int} =    Evaluate    random.randint(100000, 1000000)    modules=random
    ${random_email} =  Catenate  SEPARATOR=    ${ran_int}    ${email_sufix}
    Fill In Email To Create    ${random_email}
    Click Create Account Button
	Wait Create Account Form
	Fill In First Name    Bond
	Fill In Last Name    James
	Fill In Password    ${ran_int}
	Fill In Address First Line    ${ran_int}
	Fill In City    ${ran_int}
	Fill In State    Alabama
	Fill In Zip Code    35242
	Fill In Mobile    ${ran_int}
    Click Register Button