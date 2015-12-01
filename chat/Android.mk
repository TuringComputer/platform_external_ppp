LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := chat.c
LOCAL_MODULE := chat
LOCAL_MODULE_TAGS := eng

include $(BUILD_EXECUTABLE)
