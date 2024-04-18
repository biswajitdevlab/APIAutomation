****** Settings ***
Library        RequestsLibrary
Library        Collections


****** Variables ***
${base_url}      http://reqres.in
${user}          2

****** Test Cases ***
Get_UserInfo
  [Tags]        API
  create session   myssion      ${base_url}
  ${response}=     get request   myssion    /api/uesrs/${user}
  log to console   ${response.status_code}
  log to console   ${response.content}
  log to console   ${response.headers}
 #Validations
 #${status_code}=     convert to string    ${response.status_code}
 #should be equal     ${status_code}        200


 #${body}=    convert to string     ${response.content}
 #should contain ${body}   Coming soon


 #${contentTypeValue}=  get from dictionary  ${response.headers}     date
 #should be equal   ${contentTypeValue}    Wed, 03 May 2023 04:28:56 GMT