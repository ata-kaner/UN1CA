# Add camera libs
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libSwIsp_core.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libSwIsp_wrapper_v1.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/liblow_light_hdr.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhigh_dynamic_range.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhumantracking.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhumantracking_util.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsecimaging_pdk.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libveengine.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libHpr_RecFace_dl_v1.0.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsaiv_HprFace_cmh_support_jni.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libhigh_res.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsuperresolution.arcsoft.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsuperresolution_wrapper_v2.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

# Fix MyFilter
DELETE_FROM_WORK_DIR "system" "system/cameradata/myfilter"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/cameradata/myfilter" 0 2000 755 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libMyFilter.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

# Add ImageTagger lib
ADD_TO_WORK_DIR "a73xqxx" "system" "system/lib64/libImageTagger.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"

# Upgrade midas blobs
DELETE_FROM_WORK_DIR "vendor" "etc/midas"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "etc/midas" 0 2000 755 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "a36xqnaxx" "vendor" "etc/midas/SRIBMQA_aiFiQA_V100_FP32.tflite" 0 0 644 "u:object_r:vendor_configs_file:s0"
ADD_TO_WORK_DIR "a36xqnaxx" "vendor" "etc/midas/SRIBMQA_aiIQA_V100_FP32.tflite" 0 0 644 "u:object_r:vendor_configs_file:s0"

# Upgrade singletake blobs
DELETE_FROM_WORK_DIR "vendor" "etc/singletake"
ADD_TO_WORK_DIR "a73xqxx" "vendor" "etc/singletake" 0 2000 755 "u:object_r:vendor_configs_file:s0"

LOG "- Patching /vendor/ueventd.rc"
EVAL "cat \"$MODPATH/ueventd.rc.diff\" >> \"$WORK_DIR/vendor/ueventd.rc\""

LOG "- Fixing Ultra-Wide camera"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "ef4f40f9cfe3ffb4e60140b962f5ffd0" "ef4f40f9cfe3ffb4e6031f2a62f5ffd0"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "8d5748b90a0240b9ed0f0034ed048052" "8d5748b90a0240b9ed0f003420048052"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "5f090071c1000054880340b9f1048052" "5f090071c1000054880340b931048052"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "a4039a3cf83700f9f62700f9a1010054" "a4039a3cf83700f9f62700f90d000014"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "4802005421008052c60280523b20cc1a" "1f2003d521008052c60280523b20cc1a"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "7f03066afb6340f98001005406f0fff0" "7f03066afb6340f91f2003d506f0fff0"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "d2060014aa0100b4e10040ad23008052" "c4ffff17aa0100b4e10040ad23008052"
HEX_PATCH "$WORK_DIR/vendor/lib64/hw/com.qti.chi.override.so" "f56700f9bf0210ebe208005421008052" "f56700f9bf0210ebe208005401008052"

DELETE_FROM_WORK_DIR "vendor" "saiv/image_understanding/db/aig_classifier/aig_classifier_cnn.tf"
ADD_TO_WORK_DIR "r9qxxx" "vendor" "saiv/image_understanding/db/aig_classifier/aig_classifier_cnn.tflite" 0 2000 755 "u:object_r:vendor_configs_file:s0"
