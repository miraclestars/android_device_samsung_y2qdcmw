LOCAL_PATH := $(call my-dir)

# Init files

include $(CLEAR_VARS)
LOCAL_MODULE       := init.y2q.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.y2q.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)
