#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14913536:904a7fef3c00ed62a45d3a72c65c6c7d4469c068; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12509184:36b768fcaa40fc30a5e66b0bff44ba840b4e219b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 904a7fef3c00ed62a45d3a72c65c6c7d4469c068 14913536 36b768fcaa40fc30a5e66b0bff44ba840b4e219b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
