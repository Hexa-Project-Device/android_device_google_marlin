# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/hexa/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-lineage.mk

# OTA Updater for Shamu
PRODUCT_PROPERTY_OVERRIDES += \
  ro.ota.romname=Hexa-Project-Marlin \
  ro.ota.version=$(shell date -u +%Y%m%d) \
  ro.ota.manifest=https://raw.githubusercontent.com/Hexa-Project/release_marlin/cm-14.1/ota.xml

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hexa_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.1/NOF26W/3637559:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.1 NOF26W 3637559 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
