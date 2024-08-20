#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/y2qdcmw

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Boot Animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Fingerprint
TARGET_HAS_UDFPS := true

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.y2q.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay

# Inherit from common
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/samsung/y2qdcmw/y2qdcmw-vendor.mk)
