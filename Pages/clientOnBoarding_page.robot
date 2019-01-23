*** Keywords ***
Click on product
    sleep    2s
    click element                   //*[@id="form:crdhwayCobTab:j_id_1nw:j_id_1u6:mortgageList"]/div[1]
click on Modify
    sleep    2s
    Click on    Modify

click on Interest charge periodicity
    click element                   //*[@id="form:crdhwayCobTab:j_id_1nw:j_id_1oe:j_id198"]

click on annual
    double click element           //*[@id="form:crdhwayCobTab:j_id_1nw:j_id_1oe:interestChargePeriodicity_0"]