LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

TARGET_ARCH_ABI			:= armeabi

LOCAL_MODULE := libogg

#LOCAL_ARM_MODE := arm
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
$(LOCAL_PATH)/../include/


LOCAL_SRC_FILES := framing.c bitwise.c

LOCAL_CFLAGS			:= -Wall -g 
#Needed if building of shared library
#LOCAL_LDFLAGS          := -Wl,-Map,xxx.map

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)

