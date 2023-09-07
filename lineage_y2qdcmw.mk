#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/y2qdcmw/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_y2qdcmw
PRODUCT_DEVICE := y2qdcmw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-52A
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_DEVICE := qssi
PRODUCT_SYSTEM_NAME := y2qdcmw

PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID="$(BUILD_ID).SC52AOMU1DWG1" \
    BUILD_NUMBER=SC52AOMU1DWG1 \
    LINEAGE_DEVICE=y2qdcmw \
    PRIVATE_BUILD_DESC="y2qdcmw-user 13 TP1A.220624.014 SC52AOMU1DWG1 release-keys" \
    TARGET_DEVICE=y2q \
    TARGET_PRODUCT=y2qdcmw \
    TARGET_BUILD_FLAVOR="y2qdcmw-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := samsung/SC-52A/SC-52A:13/TP1A.220624.014/SC52AOMU1DWG1:user/release-keys
