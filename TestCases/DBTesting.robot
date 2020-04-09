*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect TO Database  pymysql    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}       employee
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
#Create person table
#    ${output}=  Execute Sql String  Create table person(id integer, first_name varChar(20), last_name varChar(20));
#   log to console  ${output}
#   should be equal as strings  ${output}   None

Inserting Data into person table
    ${output}=  Execute Sql String      Insert into person values(101,"john","canady");
    log to console    ${output}
    should be equal as strings    ${output}     None