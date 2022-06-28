*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
Resource  ../Variables/variable.robot
Resource  ../Pages/all_test_case.robot
*** Variables ***

*** Test Cases ***

ALL_Get_Products
    Products_API