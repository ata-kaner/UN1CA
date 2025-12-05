# [
QUEEN_REPO="https://github.com/koyunkirpan/bomb/releases/download/bomboclat"

REPLACE_KERNEL_BINARIES()
{
    [ -f "$WORK_DIR/kernel/boot.img" ] && rm -rf "$WORK_DIR/kernel/boot.img"
    [ -f "$WORK_DIR/kernel/dtbo.img" ] && rm -rf "$WORK_DIR/kernel/dtbo.img"
    echo "Downloading boot.img"
    curl -L -s -o "$WORK_DIR/kernel/boot.img" "$QUEEN_REPO/boot.img"
    echo "Downloading dtbo.img"
    curl -L -s -o "$WORK_DIR/kernel/dtbo.img" "$QUEEN_REPO/dtbo.img"
}
# ]

REPLACE_KERNEL_BINARIES
