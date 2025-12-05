LOG_STEP_IN "Fixing NFC for G781B"
if ! grep -q "G781B" "$WORK_DIR/vendor/etc/init/init.nfc.samsung.rc"; then
    {
        echo ""
        echo "on property:ro.boot.em.model=SM-G781B"
        echo "    setprop ro.boot.product.hardware.sku \"s3fwrn5\""
        echo "    setprop ro.vendor.nfc.feature.chipname \"SLSI\""
        echo ""
        echo "on property:ro.boot.em.model=SM-G7810"
        echo "    setprop ro.boot.product.hardware.sku \"s3fwrn5\""
        echo "    setprop ro.vendor.nfc.feature.chipname \"SLSI\""
        echo ""
        echo "on property:ro.boot.em.model=SM-G781N"
        echo "    setprop ro.boot.product.hardware.sku \"s3fwrn5\""
        echo "    setprop ro.vendor.nfc.feature.chipname \"SLSI\""
    } >> "$WORK_DIR/vendor/etc/init/init.nfc.samsung.rc"
fi
LOG_STEP_OUT
