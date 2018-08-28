########################################################################################
#Author : Ambarish Majee
#Date Created : 08/28/2018
#Date Modified : 08/28/2018
#Modifications
#Created Performace Testcase
########################################################################################
*** Settings ***
Library           Selenium2Library
Library           JMeterLib.py
Library           Collections
Resource    ../../00_Resources.robot 


*** Variables ***
${jMeterStartup}  ${JMETER_HOMEPATH}jmeter.bat
${jmxfilelocation}  ${INPUT_DIR}AmazonLogin.jmx
${outputresults}  ${OUTPUT_RESULTS_DIR}

*** Test Cases ***

TC1_justRunJMeter
    [Tags]    Performance
    Run jmeter   ${jMeterStartup}  ${jmxFileLocation}  ${outputresults}TC1.jtl
    #Run Jmeter    jmeterPath    testPlanPath    logFilePath    
