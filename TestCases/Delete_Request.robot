*** Settings ***
Library   RequestsLibrary
Library   Collections
*** Variables ***
${url}=     https://reqres.in
*** Test Cases ***
delete request
     [Tags]  Demo
     Create Session  Session1   ${url}   disable_warnings=1
     ${endpoint}     Set Variable    api/users/2
     ${response}     Delete On Session  Session1    ${endpoint}
     Log To Console    ${response.status_code}
     Log To Console    ${response.content}
     #validations
     ${status_code}=     Convert To String    ${response.status_code}
     should be equal    ${status_code}   204