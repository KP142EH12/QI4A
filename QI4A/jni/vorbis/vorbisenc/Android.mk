LOCAL_PATH := $(call my-dir)

###########################
#
# SDL shared library
#
###########################
include $(CLEAR_VARS)


LOCAL_MODULE := libvorbisenc

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
$(LOCAL_PATH)/../include \
$(LOCAL_PATH)/../../libogg/include \
$(LOCAL_PATH)/../lib \

LOCAL_SRC_FILES := vorbisenc.c

#Needed if building shared library
#LOCAL_SHARED_LIBRARIES := libogg libvorbis	

LOCAL_STATIC_LIBRARIES := libogg libvorbis	


LOCAL_LDLIBS := -ldl -lGLESv1_CM -llog -L$(DIRECTORY_TO_OBJ)

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)

