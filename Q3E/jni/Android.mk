LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_ARM_NEON := true
TARGET_ARCH_ABI	:= armeabi armeabi-v7a

LOCAL_LDLIBS    := -ldl -llog
LOCAL_MODULE    := q3eloader
LOCAL_SRC_FILES := q3e.c

include $(BUILD_SHARED_LIBRARY)
