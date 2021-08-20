***Settings
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem
Variables         variables.py
*** Keywords

*** Test Cases
random_boolean
    ${nb_string} =  generate random string  1  [NUMBERS]
    ${nb_int} =  convert to integer  ${nb_string}
    Run keyword and return  evaluate  (${nb_int} % 2) == 0

random_boolean2
    ${nb_string} =  generate random string  1  [NUMBERS]
    ${nb_int} =  convert to integer  ${nb_string}
    Run keyword and return  evaluate  (${nb_int} % 2) == 0
    
random_boolean3
    ${nb_string} =  generate random string  1  [NUMBERS]
    ${nb_int} =  convert to integer  ${nb_string}
    Run keyword and return  evaluate  (${nb_int} % 2) == 0
