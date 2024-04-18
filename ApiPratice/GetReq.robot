*** Settings ***
Library      RequestsLibrary
Library      Collections
*** Variables ***
${user}=     2
*** Test Cases ***
Get Requests
     ${response}=  GET     https://reqres.in/api/users/${user}
     Status Should Be    200
     Should Be Equal As Strings    ${response.reason}   OK
    # Dictionary Should Contain Key    ${response.json()}    id