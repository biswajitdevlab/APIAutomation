*** Settings ***
Library       Collections
Library       pabot.PabotLib
*** Test Cases ***
creation of dictionary
     [Tags]      API
     ${data}=    Create Dictionary   name=Rama   course=c++  branch=cse
     Dictionary Should Contain Key    ${data}    name
     Log     ${data}[name]
    ${course}=    Get From Dictionary    ${data}    course
    log     ${course}
