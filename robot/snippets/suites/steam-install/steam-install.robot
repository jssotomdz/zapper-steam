*** Settings ***
Library	    SSHLibrary
Resource    ${KVM_RESOURCES}

*** Variables ***
${T}    ${CURDIR}
${host}             10.102.154.199
${username}         ubuntu
${password}         u
${alias}            remote_host

*** Test Cases ***
Install steam
    Open Connection    ${host}        alias=${alias}
    Login              ${username}    ${password}    delay=1
    Execute Command    sudo snap install steam
    ${super}    Create List    LEFT_GUI
    ${enter}    Create List    ENTER
    Keys Combo    ${super}
    Type String
    ...        steam
    Keys Combo    ${enter}
