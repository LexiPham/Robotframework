*** Settings ***
Resource          ../Pages/login_page.robot
Resource          ../Pages/SearchClientRelationship_page.robot
Resource          ../Pages/clientOnBoarding_page.robot

*** Keywords ***
Select customer "${clientID}" and click continue
     Click on    13986226
     Customer found - Click on continue

Select order number "${oderNumber}" and click continue
    Click and Wait    001
    Order found - Click on continue

Modify product
    [Arguments]             ${product}
    Click on product
    click on Modify

Update Interest charge periodicity
    [Arguments]             ${period}
    click on Interest charge periodicity
    click on Annual
    click on            Update

Verify Interest charge periodicity updated successfully
    Reload page
    Click on    Product
    sleep   2s
    ${expected}         Get Text      xpath=(//*[@id="form:crdhwayCobTab:j_id_1nw:j_id_1oe:interestChargePeriodicity_label"])[2]
    Should be equal     ${expected}     Annual