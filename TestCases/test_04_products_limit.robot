*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
Resource  ../Variables/variable.robot
Resource  ../Pages/all_test_case.robot

*** Test Cases ***

Get_All_Products_limit
    Products_limit