*** Settings  ***
Library           OperatingSystem
*** Variables ***
${statCode}     200
*** Test Cases ***
Test Case for Pass0       
    Should Be Equal    10    10

Test Case for Fail        
    Should Be Equal    10    10

Test Case for PASS1        
    Should Be Equal    15    15
