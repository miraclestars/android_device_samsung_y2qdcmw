#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/y2qdcmw

# Inherit from common
include device/samsung/sm8250-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineage_y2qdcmw_defconfig
BOARD_BOOT_HEADER_NAME := SRPSI26B001

# OTA
TARGET_OTA_ASSERT_DEVICE := y2qdcmw

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
-include vendor/samsung/y2s/BoardConfigVendor.mk
