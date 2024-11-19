SKIPUNZIP=1

# [
QUEEN_REPO="https://github.com/smsn-queen-project/krml_queen_kona/releases/download/queen-x1"

REPLACE_KERNEL_BINARIES()
{
    [ -f "$WORK_DIR/kernel/boot.img" ] && rm -rf "$WORK_DIR/kernel/boot.img"
    echo "Downloading boot.img"
    curl -L -s -o "$WORK_DIR/kernel/boot.img" "$QUEEN_REPO/boot.img"
}
# ]

REPLACE_KERNEL_BINARIES
