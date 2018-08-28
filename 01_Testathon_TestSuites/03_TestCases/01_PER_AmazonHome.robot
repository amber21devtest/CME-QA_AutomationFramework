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
    
TC2_analyseAndConvertExistingJtlLog
    [Tags]    Performance
    ${result}    analyse Jtl convert    ${outputresults}TC1.jtl
    log    ${result}
    : FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}
    \    ${check}    Get From Dictionary    ${ELEMENT}    samplesSuccessRateInclAssert
    \    log to console    ${check}
    Should Be Equal As Integers    ${check}    47  
    
TC3_runJMeterAndAnalyseAndConvertLog
    [Tags]    Performance
    ${result}    run jmeter analyse jtl convert    ${jMeterStartup}  ${jmxFileLocation}  ${outputresults}TC3.jtl  
    log    ${result}
    :FOR    ${ELEMENT}    IN    @{result}
    \    log dictionary    ${ELEMENT}