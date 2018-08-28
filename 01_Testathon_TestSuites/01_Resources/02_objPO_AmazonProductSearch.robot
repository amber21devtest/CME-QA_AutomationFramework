########################################################################################
#Author : Ambarish Majee
#Date Created : 08/28/2018
#Date Modified : 08/28/2018
#Modifications
#Created PageObject for Amazon Home page
########################################################################################
*** Settings ***
Documentation  Page Object Amazon Log-in page 
Library    Selenium2Library    
Library    BuiltIn
Resource    ../../00_Resources.robot 

*** Variables ***

# PageObject Web elements
${txt_search_product}  xpath=.//*[@id='twotabsearchtextbox']
${img_searched_product}  xpath=.//*[@id='nav-search']/form/div[2]/div/input
${lnl_searched_product}  partial link=Wheels Five Car Gift Pack Assortment
${btn_add_to_cart}  xpath=.//*[@id='add-to-cart-button']
${btn_proceed_to_checkout}  xpath=.//*[@id='hlb-ptc-btn-native']


*** Keywords ***
Select and Add to Cart the Required Product
    Input Text  ${txt_search_product}  ${SEARCH_PRODUCT}
    Click Element  ${img_searched_product} 
    Click Link  ${lnl_searched_product}
    Select Window  NEW    
    Click Element  ${btn_add_to_cart}
    Click Element  ${btn_proceed_to_checkout}

  
    

