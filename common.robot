*** Settings ***
Library           ExtendedSelenium2Library
*** Variables ***
${TIMEOUT}                   1s

${URL}          https://testing.io
*** Keywords ***
User "${username}" logs in with password "${password}"
    Open Browser To Login Page
    Input Username          ${username}
    Input Password          ${password}
    Submit Credentials
    ${url}   Get Location
    log to console        Location is ${url}
    log to console        User: ${username}
    log to console        Password: ${password}

#Open Browser To Login Page
#    Open Browser        ${URL}    Chrome
#    Go to portal customization
#    Maximize Browser Window
Open Browser To Login Page
    ${list} =     Create List    disable-web-security   allow-running-insecure-content  ignore-certificate-errors   start-maximized         headless    test-type   no-sandbox      window-size=1440x900
    ${args} =     Create Dictionary    args=${list}
    ${desired caps} =     Create Dictionary    chromeOptions=${args}

    Open Browser    ${URL}       remote_url=http://10.111.1.11:4444/wd/hub     browser=chrome    desired_capabilities=${desired caps}

    Go to portal customization

Go to portal customization
    click element                               ${PORTAL LOCATOR}

Click on
    [Arguments]             ${text}
    click element                               xpath=(//*[text()="${text}"])[1]

Click and Wait
    [Arguments]             ${text}
    sleep   ${TIMEOUT}
    click element                               xpath=(//*[text()="${text}"])[1]