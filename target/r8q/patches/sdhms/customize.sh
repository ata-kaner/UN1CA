SMALI_PATCH "system" "system/priv-app/SamsungDeviceHealthManagerService/SamsungDeviceHealthManagerService.apk" \
    "smali/r1/c.smali" "replace" \
    '<clinit>()V' \
    'SM8350' \
    'SM8250'

SMALI_PATCH "system" "system/priv-app/SamsungDeviceHealthManagerService/SamsungDeviceHealthManagerService.apk" \
    "smali/t1/O.smali" "replace" \
    'u()V' \
    'TABoostControllerSM8350_SYSFS' \
    'TABoostControllerSM8250_SYSFS'

SMALI_PATCH "system" "system/priv-app/SamsungDeviceHealthManagerService/SamsungDeviceHealthManagerService.apk" \
    "smali/U1/w.smali" "replace" \
    '<clinit>()V' \
    'SM8350' \
    'SM8250'
