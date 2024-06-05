*** Settings ***
Documentation       USB drives common resources

Library             OperatingSystem
Library             libraries/TypeCMux.py
Library             libraries/Download.py


*** Variables ***
${TARGET_DEVICE}    /dev/sda
${REFRESH_IMAGE}    ${True}


*** Keywords ***
Download and Provision via USB
    [Documentation]    Pull the image provided by `url` and flash it
    ...    to the `TARGET_DEVICE`.
    [Arguments]    ${url}    ${retries}=5

    IF    ${REFRESH_IMAGE}
        TypeCMux Set State    TS

        Wait Until Created    ${TARGET_DEVICE}    5

        DownloadToDev    ${url}    ${TARGET_DEVICE}    ${retries}
    END

    TypeCMux Set State    DUT

Unplug USB
    [Documentation]    Unplug USB device from both sides.
    TypeCMux Set State    OFF
