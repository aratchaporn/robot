*** Settings ***
Library             SeleniumLibrary 
Suite teardown      Close All Browsers



*** Test Cases ***
Check all required fields in registration form
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register    chrome
    click Element       id=btn_submit
    Wait Until Page Contains        The Email field is required.
    Wait Until Page Contains        The Password field is required.
    Wait Until Page Contains        The Re-type Password field is required.
    Wait Until Page Contains        The Name field is required.

Register successfully when input valid data
    Open Browser        http://bit.ly/2BajZDe   chrome
    Input Text      id=email    arat@hotmail.com
    Input Password      id=password     11111
    Input Password      id=repassword   11111
    Input Text      id=name     arat
    click Element       id=btn_submit
    Wait Until page Contains        arat@hotmail.com 