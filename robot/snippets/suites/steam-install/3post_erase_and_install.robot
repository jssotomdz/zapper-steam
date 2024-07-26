*** Settings ***
Resource    ${KVM_RESOURCES}

*** Variables ***
${T}    ${CURDIR}

*** Test Cases ***
Create Account
	[Documentation]		Create the user account
	Match	${T}/create-your-account.png		10
	${combo}	Create List		TAB
	Type String		ubuntu
