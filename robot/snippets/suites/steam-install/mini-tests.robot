*** Settings ***
Resource    ${KVM_RESOURCES}

*** Variables ***
${T}    ${CURDIR}

*** Test Cases ***
Select Language
	[Documentation]		Select Language, we will default to English
	Match	${T}/language.png	120
	Move Pointer To (520, 414)
	Click LEFT Button

A11y Slide
	[Documentation]		Accessibility Slide
	Match	${T}/a11y.png	30
	Move Pointer To (520, 414)
	Click LEFT Button

Keyboard Layout
	[Documentation]		Keyboard Layout Slide
	Match	${T}/keyboard-layout.png	30
	Move Pointer To (520, 414)
	Click LEFT Button

Internet Connection
	[Documentation]		Connect to the Internet Slide
	Match	${T}/internet-connection.png	30
	Move Pointer To (520, 414)
	Click LEFT Button

Interactive vs Automated
	[Documentation]		Interactive vs automated installation slide
	Match	${T}/interactive-vs-automated.png		30
	Move Pointer To (520, 414)
	Click LEFT Button

Default vs Extended
	[Documentation]		Default vs extended installation slide
	Match	${T}/default-vs-extended.png		30
	Move Pointer To (520, 414)
	Click LEFT Button

THEN PROPRIETARY SOFTWARE
THEN HOW DO YOU WANT TO INSTALL UBUNTU - disk setup
we need to click at centre of "Erase disk and install ubuntu"
issue here - we need to erase previous machine




WOOPS! wrong order heheh
Try or Install Ubuntu
	[Documentation]		Try or Install Slide
	Match	${T}/try-or-install.png		30
	Move Pointer To (520, 414)
	Click LEFT Button