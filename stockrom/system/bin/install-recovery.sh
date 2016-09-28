#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:13288682:a92dfa7949f39c40b6746bc07e34667279e43d39; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12330214:bb8b13d6b9d5b397b2427ff6e39b77b2b42e0ecb EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery a92dfa7949f39c40b6746bc07e34667279e43d39 13288682 bb8b13d6b9d5b397b2427ff6e39b77b2b42e0ecb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
