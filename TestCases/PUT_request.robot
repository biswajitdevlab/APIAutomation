*** Settings ***
Library      SeleniumLibrary
Library      Collections
Library    RequestsLibrary
*** Variables ***
${url}=     https://reqres.in
*** Test Cases ***
put request
     [Tags]  Demo
     Create Session  Session1   ${url}   disable_warnings=1
     ${endpoint}     Set Variable    api/users/2
     ${body}=    Create Dictionary   name=Virat  job=Wrestler
     ${response}     PUT On Session  Session1    ${endpoint}     data=${body}
     Log     ${response.status_code}
     Log To Console  ${response.content}
     #validations
     ${status_code}=     Convert To String    ${response.status_code}
     should be equal    ${status_code}   200