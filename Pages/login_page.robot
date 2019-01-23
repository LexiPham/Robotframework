*** Settings ***
Resource          ../common.robot

*** Variables ***
${USERNAME LOCATOR}                   //*[@id="login:login-form:username"]
${PASSWORD LOCATOR}                   //*[@id="login:login-form:password"]
${SUBMIT LOCATOR}                     //*[@id="login:login-form:login-command"]/span
${PORTAL LOCATOR}                     xpath=(//a[text()="Portal Home"])[2]

*** Keywords ***
Input Username
    [Arguments]             ${username}
    Input Text                                  ${USERNAME LOCATOR}    ${username}
Input Password
    [Arguments]             ${password}
    Input Text                                  ${PASSWORD LOCATOR}   ${password}
Submit Credentials
    click element                               ${SUBMIT LOCATOR}