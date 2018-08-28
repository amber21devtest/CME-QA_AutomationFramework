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
Resource    00_ConnectionSetup.robot 


*** Variables ***
# PageObject Web elements
${txt_uid}  xpath=.//*[@id='ap_email']
${txt_pwd}  xpath=.//*[@id='ap_password']
${btn_continue}  xpath=.//*[@id='continue']
${btn_submit}   xpath=//*[@id="signInSubmit"]
${lnk_account}  xpath=.//*[@id='nav-link-yourAccount']/span[2]


*** Keywords ***
Open Browser and amazon homepage to Log-in
    [Arguments]   ${METHOD}  ${URL}  ${BROWSER}
	      Run Keyword If    '${METHOD}'=='WEB'  Amazon-web execution steps  ${URL}  ${BROWSER}
	      Run Keyword If    '${METHOD}'=='MOBILE'  Amazon-mobile execution steps  ${URL}   
	      Click Element  ${lnk_account}    
    

Enter UserName and Password
    [Arguments]  ${USERNAME}  ${PASSWORD}
		  Input Text  ${txt_uid}    ${USERNAME}
		  Click Element  ${btn_continue}
		  Input Text    ${txt_pwd}    ${PASSWORD}
		  Click Element    ${btn_submit}
     
Amazon-web execution steps 
    [Arguments]  ${URL}  ${BROWSER}   
	     Open Browser  ${URL}  ${BROWSER}  
	     Maximize Browser Window    
     
Amazon-mobile execution steps
    [Arguments]  ${URL}
    Run Keyword If  '${EMULATOR}' =='LOCAL'   Connect to the Mobile Emulator with Local Appium Setup 
    Run Keyword If  '${EMULATOR}' =='SAUCE'   Connect to the Mobile Emulator with Sauce Appium Setup 
    Go To   ${URL}
  
    

