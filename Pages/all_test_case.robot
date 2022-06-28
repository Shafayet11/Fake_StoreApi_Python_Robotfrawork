*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary
Resource    ../Variables/variable.robot
*** Keywords ***
Products_API
    Create Session    ProductSession  ${Url_products}
    ${response} =  Get Request  ProductSession   ${Url_products}
    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}
    ${status_code}=  convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body} =  convert to string  ${response.content}
    Should contain    ${body}    rating
    log to console  ${response.content}

Products1_API
    Create Session    Products1Session  ${Url_products1}
    ${response} =  Get Request  Products1Session   ${Url_products1}
    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}
    ${status_code}=  convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body} =  convert to string  ${response.content}
    should contain  ${body}   count

Category_Jewelery
    Create Session    Category_JewelarySession  ${Url_category_jewelery}
    ${response} =  Get Request  Category_JewelarySession   ${Url_category_jewelery}
    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}
    ${status_code}=  convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body} =  convert to string  ${response.content}
    should contain  ${body}   rate

Products_limit
    Create Session    ProductsLimit  ${Url_products_limit}
    ${response} =  Get Request  ProductsLimit   ${Url_products_limit}
    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}
    ${status_code}=  convert to string  ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body} =  convert to string  ${response.content}
    should contain  ${body}   count