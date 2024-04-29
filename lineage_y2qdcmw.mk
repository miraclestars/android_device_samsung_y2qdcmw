#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from y2qdcmw device
$(call inherit-product, device/samsung/y2qdcmw/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := y2qdcmw
PRODUCT_NAME := lineage_y2qdcmw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-52A
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_DEVICE := qssi
PRODUCT_SYSTEM_NAME := y2qdcmw

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID).SC52AOMS1DWL1" \
    BUILD_NUMBER=SC52AOMS1DWL1 \
    LINEAGE_DEVICE=y2qdcmw \
    PRIVATE_BUILD_DESC="y2qdcmw-user 13 TP1A.220624.014 SC52AOMS1DWL1 release-keys" \
    TARGET_BUILD_FLAVOR="y2qdcmw-$(TARGET_BUILD_VARIANT)" \
    TARGET_DEVICE=y2q \
    TARGET_PRODUCT=y2qdcmw

BUILD_FINGERPRINT := samsung/SC-52A/SC-52A:13/TP1A.220624.014/SC52AOMS1DWL1:user/release-keys

# Define PDA property for camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.build.PDA=SC52AOMS1DWL1
