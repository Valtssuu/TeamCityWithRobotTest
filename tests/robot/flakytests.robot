***Settings
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem
Variables         variables.py
Library           String
*** Keywords
random_boolean
    ${nb_string} =  generate random string  1  [NUMBERS]
    ${nb_int} =  convert to integer  ${nb_string}
    Run keyword and return  evaluate  (${nb_int} % 2) == 0
*** Test Cases

unstable_test
    ${bool} =  random_boolean
    should be true  ${bool}
    
unstable_test2
    ${bool} =  random_boolean
    should be true  ${bool}
