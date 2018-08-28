########################################################################################
#Author : Ambarish Majee
#Date Created : 08/27/2018
#Date Modified : 08/27/2018
#Modifications
#Connection string for Applium emulator/Saucelab emulator
########################################################################################
*** Settings ***
Documentation  Coonection setup for Local/SauceLab emulator 
Library           Selenium2Library
Library           Collections
Resource    ../../00_Resources.robot

*** Keywords ***
Connect to the Mobile Emulator with Local Appium Setup
    ${Options}    Create Dictionary    androidPackage    ${ANDRIOD_PACKAGE}
    ${capbilities}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${capbilities}    platformName    ${PLATFORM_NAME}
    Set To Dictionary    ${capbilities}    deviceName    ${DEVICE_NAME}
    Set To Dictionary    ${capbilities}    browserName    ${BROWSER}
    Create Webdriver    Remote    command_executor=${LOCAL_APPIUM_URL}    desired_capabilities=${capbilities}
 
 
 Connect to the Mobile Emulator with Sauce Appium Setup 
    ${Options}    Create Dictionary    androidPackage    ${ANDRIOD_PACKAGE}
    ${capbilities}    Create Dictionary    chromeOptions    ${Options}
    Set to Dictionary    ${capbilities}    platformName    ${ANDRIOD_PACKAGE}
    Set to Dictionary    ${capbilities}    platformVersion   ${PLATFORM_VERSION}
    Set To Dictionary    ${capbilities}    deviceName     ${DEVICE_NAME}
    Set To Dictionary    ${capbilities}    browserName    ${BROWSER}
    Set To Dictionary    ${capbilities}    appiumVersion    ${APPIUM_VERSION}
    Set To Dictionary    ${capbilities}    deviceOrientation  ${DEVICE_ORIENTATION}
    
    Create Webdriver  Remote    command_executor=${SAUCE_URL}    desired_capabilities=${capbilities}