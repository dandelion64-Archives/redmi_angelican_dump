#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:0d49986558f9a727d32ecd4adae899538958b7a0; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:7d8fc18032399992f5e317c827fc61ed8edecc1e \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:0d49986558f9a727d32ecd4adae899538958b7a0 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
