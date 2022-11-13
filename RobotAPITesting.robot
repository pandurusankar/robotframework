*** Settings ***
Suite Setup       Create Session    jsonplaceholder    http://localhost:3000
Library           Collections
Library           JSONLibrary
Library           RequestsLibrary
Library           SeleniumLibrary

*** Test Cases ***
Get Request Test
    ${response}=    GET On Session    jsonplaceholder    /posts/1
    Status Should Be    200    ${response}

Post Request Test
    &{body}=    Create Dictionary    id=2    title=json-server    author=typicode
    ${response}=    POST On Session    jsonplaceholder    /posts    json=${body}
    Status Should Be    201    ${response}

Delete Request Test
    ${response}=    DELETE On Session    jsonplaceholder    /posts/2
    Status Should Be    200
