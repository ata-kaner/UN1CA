# Beginning of System
LOG_STEP_IN "Adding stock rscmgr.rc"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/init/rscmgr.rc" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "Adding stock CameraLightSensor app"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/permissions/privapp-permissions-com.samsung.adaptivebrightnessgo.cameralightsensor.xml" \
    0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/priv-app/CameraLightSensor/CameraLightSensor.apk" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "Adding stock ev_lux_map_config.xml"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/ev_lux_map_config.xml" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "Adding stock TUI app"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/sysconfig/preinstalled-packages-com.qualcomm.qti.services.secureui.xml" \
    0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system_ext" "app/com.qualcomm.qti.services.secureui/com.qualcomm.qti.services.secureui.apk" \
    0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "- Adding 32-bit WFD blobs"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/bin/insthk" 0 2000 755 "u:object_r:insthk_exec:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/bin/remotedisplay" 0 2000 755 "u:object_r:remotedisplay_exec:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libhdcp2.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libremotedisplay_wfd.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libremotedisplayservice.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libsecuibc.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libstagefright_hdcp.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/wfd_log.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib64/libhdcp_client_aidl.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libhdcp2.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libremotedisplay_wfd.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libremotedisplayservice.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libsecuibc.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libstagefright_hdcp.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/wfd_log.so"
LOG_STEP_OUT

ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libhwui.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib64/libhwui.so" 0 0 644 "u:object_r:system_lib_file:s0"

LOG_STEP_IN "- Adding HIDL face biometrics libs"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/android.hardware.biometrics.face@1.0.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/vendor.samsung.hardware.biometrics.face@2.0.so" 0 0 644 "u:object_r:system_lib_file:s0"
LOG_STEP_OUT

LOG_STEP_IN "- Adding keymaster 4.0 libs"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/android.hardware.keymaster@3.0.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/android.hardware.keymaster@4.0.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/android.hardware.keymaster@4.1.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib/android.hardware.security.keymint-V1-ndk.so"
DELETE_FROM_WORK_DIR "system" "system/lib/android.hardware.security.secureclock-V1-ndk.so"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/lib_nativeJni.dk.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libdk_native_keymaster.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib/libdk_native_keymint.so"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libkeymaster4_1support.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib/libkeymaster4support.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib/vendor.samsung.hardware.keymint-V1-ndk.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/android.hardware.security.keymint-V1-ndk.so"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib64/lib_nativeJni.dk.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib64/libdk_native_keymint.so"
ADD_TO_WORK_DIR "r9qxxx" "system" "system/lib64/libdk_native_keymaster.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib64/vendor.samsung.hardware.keymint-V1-ndk.so"
LOG_STEP_OUT

# Beginning of Vendor
DELETE_FROM_WORK_DIR "vendor" "bin/hw/android.hardware.configstore@1.1-service"
DELETE_FROM_WORK_DIR "vendor" "etc/init/android.hardware.configstore@1.1-service.rc"
DELETE_FROM_WORK_DIR "vendor" "etc/seccomp_policy/configstore@1.1.policy"

LOG_STEP_IN "- Replacing vibrator service"
DELETE_FROM_WORK_DIR "vendor" "bin/hw/vendor.samsung.hardware.vibrator@2.2-service"
DELETE_FROM_WORK_DIR "vendor" "etc/init/vendor.samsung.hardware.vibrator@2.2-service.rc"
DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.vibrator@2.0.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.vibrator@2.1.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.vibrator@2.2.so"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "bin/hw/vendor.samsung.hardware.vibrator-service" 0 2000 755 "u:object_r:hal_vibrator_default_exec:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "etc/init/vendor.samsung.hardware.vibrator-default.rc" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "etc/vintf/manifest/vendor.samsung.hardware.vibrator-default.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/vendor.samsung.hardware.vibrator-V3-ndk_platform.so" 0 0 644 "u:object_r:vendor_file:s0"
LOG_STEP_OUT

ADD_TO_WORK_DIR "a73xqxx" "vendor" "bin/hw/wpa_supplicant" 0 2000 755 "u:object_r:hal_wifi_supplicant_default_exec:s0"

LOG_STEP_IN "- Replacing Hyper configs"
ADD_TO_WORK_DIR "$SOURCE_FIRMWARE" "vendor" "etc/hyper/config_hyper_permission.json"
LOG_STEP_OUT

LOG_STEP_IN "- Replacing SEC RIL stack"
DELETE_FROM_WORK_DIR "vendor" "lib64/libqmiservices-ext.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/libqmiservices-sem-ext.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/libSemDataProps.so"
DELETE_FROM_WORK_DIR "vendor" "lib64/libSemTelephonyProps.so"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "bin/hw/rild" 0 2000 755 "u:object_r:rild_exec:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib/libsemnativecarrierfeature.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib/libsecril-client.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib/libsec_semRil.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libril_sem.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/librilutils.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libsec-ril.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libsec_semRil.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libsecril-client.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libsemnativecarrierfeature.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libVendorSemDataProps.so" 0 0 644 "u:object_r:vendor_file:s0"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "lib64/libVendorSemTelephonyProps.so" 0 0 644 "u:object_r:vendor_file:s0"
LOG_STEP_OUT

# Beginning of Product
LOG_STEP_IN "- Adding OK Google Hotword Enrollment blobs"
DELETE_FROM_WORK_DIR "product" "priv-app/HotwordEnrollmentOKGoogleEx4HEXAGON"
DELETE_FROM_WORK_DIR "product" "priv-app/HotwordEnrollmentXGoogleEx4HEXAGON"
ADD_TO_WORK_DIR "a73xqxx" "product" "priv-app/HotwordEnrollmentOKGoogleEx3HEXAGON" 0 0 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "a73xqxx" "product" "priv-app/HotwordEnrollmentXGoogleEx3HEXAGON" 0 0 755 "u:object_r:system_file:s0"
LOG_STEP_OUT
