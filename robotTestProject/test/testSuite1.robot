*** Settings ***
Library    SeleniumLibrary    

Suite Setup   Log     I am inside Test suite setup    
Suite Teardown    Log     I am inside Test suite Tear Down    
Test Setup    Log     I am inside Test Test setup    
Test Teardown    Log     I am inside Test Test Tear Down    

Default Tags    Sanity  

*** Test Cases ***
MyFirstTestCase
    [Tags]    Test
    Log    Hello World 1...    

MySecodTestCase
    [Tags]    Test1
    Log    Hello World 2...    
    
MyThirdTestCase
    [Tags]    Test
    Log    Hello World 3...    
    
MyFourthTestCase
    [Tags]    Test1
    Log    Hello World 4...    


FirstSeleniumtTest
    [Tags]    selenium
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    2
    Input Text    name=q    Automatiom Step by Step
    Press Keys    name=q    ENTER
    Sleep    5      
    Close Browser
    
SampleLoginTest
    [Tags]    selenium
    [Documentation]    This is a Sample Test
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text        id=txtUsername    ${CREDENTIALS}[0]
    Input Password    id=txtPassword    ${LOGINDATS}[pwd]       
    Click Button      id=btnLogin
    Sleep    2    
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser    
    Log    Test Completed      
    Log    This Test Executed by %{username} on %{os} 
    Log    ${CURDIR}
    Log    ${TEMPDIR}       
    Log    ${EXECDIR} 
    Log    ${/} 
    Log    ${:}  
    Log    ${\n}     
    

SampleLoginTest1
    [Tags]    selenium
    [Documentation]    This is a Sample Test
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    LoginKW
    Sleep    2    
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser    
    Log    Test Completed      

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATS}    userid=Admin    pwd=admin123


*** Keywords ***
LoginKW        
    Input Text        id=txtUsername    ${CREDENTIALS}[0]
    Input Password    id=txtPassword    ${LOGINDATS}[pwd]       
    Click Button      id=btnLogin
    