*** Settings ***
Resource          ../../../Utils/Resources/Common.robot
Suite Setup       Open Custom Browser
Suite Teardown    Close Browser

*** Variables ***
${email_sufix} =  asdf!@asdf.com

*** Test Cases ***
Register01
    [Documentation]    Successful registration
    ${ran_int} =    Evaluate    random.randint(100000, 1000000)    modules=random

	Click Sign In
	Wait Registration Load
	${random_email} =  Catenate  SEPARATOR=    ${ran_int}    ${email_sufix}
	Fill In Email To Create    ${random_email}
	Click Create Account Button
	Wait Create Account Form
	Fill In Year    1990
	Fill In Month    4
	Fill In Day    23
	Fill In Title    Male
	Fill In First Name    Bond
	Fill In Last Name    James
	Fill In Password    ${ran_int}
	Fill In Sign Up Newsletter Box
	Fill In Special Offer Box
	Fill In Company    ${ran_int}
	Fill In Address First Line    ${ran_int}
	Fill In Address Second Line    ${ran_int}
	Fill In City    ${ran_int}
	Fill In State    Alabama
	Fill In Zip Code    35242
	Fill In Additional Info    Lorem Ipsum
	Fill In Phone    ${ran_int}
	Fill In Mobile    ${ran_int}
	Fill In Address Alias    007
    Click Register Button
    Sign Out Is Visible
    My Account Page Loaded
