#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f5922add0104d2c66699d98bc981afff5ead7348; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e4d052e44696059733f89b00ac6459e381c57385 EMMC:/dev/block/bootdevice/by-name/recovery f5922add0104d2c66699d98bc981afff5ead7348 67108864 e4d052e44696059733f89b00ac6459e381c57385:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
