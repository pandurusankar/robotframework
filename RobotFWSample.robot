*** Settings  ***
Library           OperatingSystem
*** Variables ***
${statCode}     200
*** Test Cases ***
Test Case for Pass        
    Should Be Equal    10    10

Test Case for Fail        
    Should Be Equal    10    11