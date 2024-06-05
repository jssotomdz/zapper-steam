*** Settings ***
Documentation       TestSuite built combining snippets

Resource            ${KVM_RESOURCES}
Resource            ${USB_RESOURCES}

Suite Setup         Setup Suite
Suite Teardown      Teardown Suite


*** Variables ***
${KVM_RESOURCES}    ${CURDIR}/resources/kvm.resource
${USB_RESOURCES}    ${CURDIR}/resources/usb_disk.resource


*** Keywords ***
Setup Suite
    Set Global Variable    ${KVM_RESOURCES}    ${KVM_RESOURCES}
    Set Global Variable    ${USB_RESOURCES}    ${USB_RESOURCES}

Teardown Suite
    Stop Video Input