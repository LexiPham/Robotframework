*** Settings ***
Resource          ../common.robot

*** Variables ***
${SEARCH LOCATOR}                   //*[@id="search-client-relationship-form:j_id_3z:searchClientRelationshipTabs:searchClientRelationshipInputText"]

*** Keywords ***
Input search
    [Arguments]             ${text}
    Input Text              ${SEARCH LOCATOR}    ${text}
    Press Key	            ${SEARCH LOCATOR}    \\13

Customer found - Click on continue
    sleep    ${TIMEOUT}
    click element                               //*[@id="search-client-relationship-form:countinueSearchPageBtn"]/span[2]

Order found - Click on continue
    sleep    ${TIMEOUT}
    click element                               //*[@id="search-client-relationship-form:j_id_55:continueButtonOrderSelection"]/span[2]