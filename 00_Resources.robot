########################################################################################
#Author : Ambarish Majee
#Date Created : 08/28/2018
#Date Modified : 08/28/2018
#Modifications
#Created the global resources
########################################################################################

*** Variables ***
#Global variables
${METHOD}  WEB                              # MOBILE/WEB 
${EMULATOR}  LOCAL                          # LOCAL/SAUCE
${URL}  https://www.amazon.in/
${BROWSER}  chrome
${USERNAME}  amber21devtest@gmail.com    
${PASSWORD}  Welcome_01

###############################################################################################
#Mobile Connection set up varibales
###############################################################################################
${SAUCE_USERNAME}     testAutothon
${SAUCE_KEY}  4a0153ff-30e4-4f83-a0b7-cd49b8a84e99
${SAUCE_URL}     https://${SAUCE_USERNAME}:${SAUCE_KEY}@ondemand.saucelabs.com:443/wd/hub
${LOCAL_APPIUM_URL}  http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}  Android
${DEVICE_NAME}  galaxy_nexus
${ANDRIOD_PACKAGE}  androidPackage
${PLATFORM_VERSION}  6.0
${APPIUM_VERSION}  1.8.1
${DEVICE_ORIENTATION}  portrait
###############################################################################################

###############################################################################################
#Product Related Details
###############################################################################################
${SEARCH_PRODUCT}  car for kids toys

###############################################################################################
#Directories
###############################################################################################
${INPUT_DIR}  ${CURDIR}/01_Testathon_TestSuites/02_Inputs/
${OUTPUT_RESULTS_DIR}  ${CURDIR}\\Results\\
#Out Put Dircetory should be the same as that of Robot Results Output in Jenkins
###############################################################################################
#Executable locations
###############################################################################################
${JMETER_HOMEPATH}  C:/Jmeter/bin/


