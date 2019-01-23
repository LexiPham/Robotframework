*** Settings ***
Resource          ../Steps/demo_step.robot

*** Test Cases ***
Sample test
    User "Consultant3" logs in with password "password"
    Click on    New Dossier
    Click on    Modify existing credit business
    Click on    Continue
    Input search    th

    Select customer "13986226" and click continue
    Select order number "001" and click continue

    Click on    Product
    Modify product      Fixed-rate mortgage

    Update Interest charge periodicity      Annual

    Verify Interest charge periodicity updated successfully