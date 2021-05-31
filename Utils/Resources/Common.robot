*** Settings ***
Library             MyWebHelper.py
Library             SeleniumLibrary
Resource            ../../Utils/Ui/Pages/Nav_bar.robot
Resource            ../../Utils/Ui/Pages/Login_page.robot
Resource            ../../Utils/Ui/Pages/Create_account_page.robot
Resource            ../../Utils/Ui/Pages/My_account_page.robot
Resource            ../../Utils/Ui/Pages/Search.robot
Resource            ../../Utils/Ui/Pages/Notification_handler.robot
Resource            ../../Utils/Ui/Pages/Home_page.robot
Resource            ../../Utils/Ui/Pages/Chart.robot

*** Variables ***
${BROWSER}          ${ROBOT_BROWSER}
${REMOTE_URL}       http://automationpractice.com

*** Keywords ***
Open Custom Browser
    [Documentation]    Open a chrome or firefox browser.
    Open Browser    ${REMOTE_URL}    ${BROWSER}
    Maximize Browser Window
