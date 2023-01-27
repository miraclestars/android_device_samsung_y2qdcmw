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

DEVICE_PATH := device/samsung/y2qdcmw

# Inherit common board flags
include device/samsung/sm7125-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineage_y2qdcmw_defconfig
BOARD_BOOT_HEADER_NAME := SRPTH31C002

# OTA assert
TARGET_OTA_ASSERT_DEVICE := y2qdcmw

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
