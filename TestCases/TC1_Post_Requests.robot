******** Settings ***
Library     RequestsLibrary
Library     Collections

**** Variables ***
${base_url}=    https://reqres.in

**** Test Cases ***
Put_CustomerRegistration
  [Tags]      API
  ${req_body}=  Create Dictionary   name=Jiban   job=Engineer
  Post      ${base_url}/api/users   json=${req_body}     expected_status=201


