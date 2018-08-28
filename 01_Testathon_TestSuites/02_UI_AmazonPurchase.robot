########################################################################################
#Author : Ambarish Majee
#Date Created : 08/27/2018
#Date Modified : 08/27/2018
#Modifications
#Created the Login and checkout a select product
########################################################################################

*** Settings ***
Documentation    Test with  valid and invalid User IDs and Passwords
Resource    ../00_Resources.robot
Resource    01_Resources/01_objPO_AmazonHome.robot
Resource    01_Resources/02_objPO_AmazonProductSearch.robot
Test Teardown    Close Browser 

*** Variables ***


*** Test Cases ***
Search and checkout the intended product form amazo
  [Tags]  Smoke  Regression  Sanity  UI
  Open Browser and amazon homepage to Log-in  ${METHOD}  ${URL}  ${BROWSER}
  Enter UserName and Password  ${USERNAME}  ${PASSWORD}
  Select and Add to Cart the Required Product
