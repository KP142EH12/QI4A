LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libvorbis

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
$(LOCAL_PATH)/../include \
$(LOCAL_PATH)/../../libogg/include

LOCAL_SRC_FILES := mdct.c smallft.c block.c envelope.c window.c lsp.c \
	           lpc.c analysis.c synthesis.c psy.c info.c \
		   floor1.c floor0.c\
		   res0.c mapping0.c registry.c codebook.c sharedbook.c\
		   lookup.c bitrate.c\

#Needed if building shared library
#LOCAL_SHARED_LIBRARIES := libogg	

LOCAL_STATIC_LIBRARIES := libogg

LOCAL_CFLAGS           := -Wall -g

LOCAL_LDFLAGS          := -Wl,-Map,xxx.map
LOCAL_LDLIBS := -ldl -lGLESv1_CM -llog -L$(DIRECTORY_TO_OBJ)

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)

