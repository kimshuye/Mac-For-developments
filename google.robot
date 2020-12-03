# -*- coding: robot -*-
*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Open google page and input keywords "Robot Framework"
    Open Browser    https://google.co.th        browser=chrome
    Input Text      name:q                      Robot Framework
    Press Keys      name:q                      RETURN
    Close Browser