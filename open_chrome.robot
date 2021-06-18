***Settings
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem
Variables         variables.py
*** Keywords

*** Test Cases
Laita moro
  Set suite variable  ${moro}   moro
  IF "${TEKSTI}" == "None"
  Open daben
  END
