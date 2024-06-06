*** Settings ***
Resource    ${KVM_RESOURCES}

*** Variables ***
${T}    ${CURDIR}

*** Test Cases ***
Next off of last page
	[Documentation]	    Hacky workaround
	Move Pointer To (520, 414)
	Click LEFT Button

Where to install ubuntu
	[Documentation]	    New page I've not seen before - annoying! But fine. We must sleep as I don't have image for this yet.
    Sleep 15
	Move Pointer To (520, 414)
	Click LEFT Button
