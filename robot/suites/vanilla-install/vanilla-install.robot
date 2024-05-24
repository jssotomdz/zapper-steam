*** Settings ***
Resource    ${KVM_RESOURCES}

*** Variables ***
${T}    ${CURDIR}

*** Test Cases ***
BIOS Menu into GRUB
	[Documentation]		Make sure to boot from USB
	Press Key And Match		F12		${T}/bios_menu_template.png		60		0.5
	Press Key	down
	Press Key	RETURN

GRUB Try or Install
	[Documentation]		Go through grub into installer
	Match ${T}/grub_try_or_install.png		120
	${combo}	Create List		ENTER
	Keys Combo		${combo}

Select Language
	[Documentation]		Select Language, we will default to English
	Match	${T}/language.png	120
	Move Pointer To ${T}/next.png
	Click LEFT Button

A11y Slide
	[Documentation]		Accessibility Slide
	Match	${T}/a11y.png	10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Keyboard Layout
	[Documentation]		Keyboard Layout Slide
	Match	${T}/keyboard-layout.png	10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Internet Connection
	[Documentation]		Connect to the Internet Slide
	Match	${T}/internet-connection.png	10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Try or Install Ubuntu
	[Documentation]		Try or Install Slide
	Match	${T}/try-or-install.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Interactive vs Automated
	[Documentation]		Interactive vs automated installation slide
	Match	${T}/interactive-vs-automated.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Default vs Extended
	[Documentation]		Default vs extended installation slide
	Match	${T}/default-vs-extended.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Proprietary Software
	[Documentation]		Slide prompting proprietary software installation
	Match	${T}/proprietary-software.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

How do you want to install Ubuntu
	[Documentation]		Erase disk etc vs manual
	Match	${T}/how-to-install.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Create Account
	[Documentation]		Create the user account
	Match	${T}/create-your-account.png		10
	${combo}	Create List		TAB
	Type String		ubuntu
	Keys Combo		${combo}
	Type String		ubuntu
	Keys Combo		${combo}
	Type String		ubuntu
	Keys Combo		${combo}
	Type String		ubuntu
	Keys Combo		${combo}
	Keys Combo		${combo}
	Type String		ubuntu
	Keys Combo		${combo}
	Move Pointer To ${T}/next.png
	Click LEFT Button

Select Timezone
	[Documentation]		Select timezone slide
	Match	${T}/select-timezone.png		10
	Move Pointer To ${T}/next.png
	Click LEFT Button

Review Installation
	[Documentation]		Review installation slide
	Match	${T}/review-installation.png		10
	Move Pointer To ${T}/install-button.png
	Click LEFT Button

Wait For Install To Finish
	[Documentation]		Install finished slide
	Match	${T}/install-complete.png		600
	Move Pointer To ${T}/restart-button.png
	Click LEFT Button
	Match	${T}/remove-medium.png		600
	[Documentation]		Do we need zapper to actually do this at this point?
	${combo}	Create List		RETURN
	Keys Combo		${combo}

Wait For Reboot To Finish
	[Documentation]		Login Prompt
	Match	${T}/login-prompt.png		600
	${combo}	Create List		RETURN
	Keys Combo		${combo}
	Type String		ubuntu
	Keys Combo		${combo}
	Type String		ubuntu
	${combo}	Create List		RETURN
	Keys Combo		${combo}
	Match	${T}/noble-desktop.png		15

