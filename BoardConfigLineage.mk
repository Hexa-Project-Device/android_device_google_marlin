# Common board config for marlin, sailfish

# Audio
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Disable dex pre-opt
WITH_DEXPREOPT := false

BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := pure_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

-include vendor/google_devices/marlin/BoardConfigVendor.mk
