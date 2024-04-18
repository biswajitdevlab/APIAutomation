*** Settings ***
Library      RequestsLibrary
Library      Collections
*** Test Cases ***
Get Requests
  [Tags]     API
  ${response}=     GET  https://reqres.in/api/users/2
  #log to console   ${response.status_code}
  Should Be Equal As Strings      ${response.reason}  OK
  Status Should Be        200  ${response}
  #Dictionary Should Contain Key    ${response.json()}    id
