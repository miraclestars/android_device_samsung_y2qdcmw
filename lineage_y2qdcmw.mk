#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from y2qdcmw device
$(call inherit-product, device/samsung/y2qdcmw/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_y2qdcmw
PRODUCT_DEVICE := y2qdcmw
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-52A

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=y2q \
    PRODUCT_NAME=y2qdcmw \
    TARGET_DEVICE=SC-52A \
    PRIVATE_BUILD_DESC="y2qdcmw-user 11 RP1A.200720.012 SC52AOMU1BTL3 release-keys" \
    BUILD_DISPLAY_ID="$(BUILD_ID).SC52AOMU1BTL3" \
    BUILD_NUMBER=SC52AOMU1BTL3 \
    TARGET_BUILD_FLAVOR="y2qdcmw-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := "samsung/SC-52A/SC-52A:11/RP1A.200720.012/SC52AOMU1BTL3:user/release-keys"
