########################################################################################
#Author : Ambarish Majee
#Date Created : 08/28/2018
#Date Modified : 08/28/2018
#Modifications
#Created the login fucntionality test case for Amazon site
########################################################################################

*** Settings ***
Documentation    Test with  valid and invalid User IDs and Passwords
Resource    ../00_Resources.robot
Resource    01_Resources/01_objPO_AmazonHome.robot 
Library           ExcelLibrary   
Test Teardown    Close Browser
*** Variables ***
${sFileName}  AmazonUsers.xls
${sheetName}  UID-PWD
*** Test Cases ***
Login to Amazon site with Valid UserID and Password
  [Tags]  Smoke  Regression  Sanity  UI  critical
  Open Browser and amazon homepage to Log-in  ${METHOD}  ${URL}  ${BROWSER}
  Enter UserName and Password  ${USERNAME}  ${PASSWORD}
 
Login Amazon site with invalid UserID and Password
  [Tags]  Smoke  Regression  UI  noncritical
  Open Excel    ${INPUT_DIR}${sFileName}  useTempDir=False
   ${rCount}  Get Row Count  	${sheetName}
  : FOR    ${x}    IN RANGE    1    ${rCount}
  \  ${username}   Read Cell Data By Coordinates    ${sheetName}    0   ${x} 
  \  ${password}  Read Cell Data By Coordinates    ${sheetName}    1   ${x} 
  \  Open Browser and amazon homepage to Log-in  ${METHOD}  ${URL}  ${BROWSER}
  \  Enter UserName and Password  ${username}  ${password}
  \  Close Browser