*** Settings ***
Resource    ${USB_RESOURCES}

*** Variables ***
${T}    ${CURDIR}

*** Test Cases ***
Get Noble Image
	[Documentation]		Downloads noble image and flashes to usb
	Download and Provision via USB 	https://releases.ubuntu.com/noble/ubuntu-24.04-desktop-amd64.iso
	Start Command    reboot    true
	