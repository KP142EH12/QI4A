# basic makefile for building libmodplug with Android NDK
#  
# by PA Casey (crow from Peculiar Games)
# go ahead and use it however you like, although
# attribution is always appreciated!  
#  
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#
LOCAL_C_INCLUDES := $(LOCAL_PATH)/libmodplug $(LOCAL_PATH)/..
LOCAL_CPP_INCLUDES := $(LOCAL_PATH)/libmodplug $(LOCAL_PATH)/..


# -DMODPLUG_TRACKER seems to be necessary in order for libmodplug
# to process the JUMP commands (Bxx in effects column) for song
# repeating, etc.
#
LOCAL_CFLAGS += -DSMALLER_READS -DHAVE_SINF -DHAVE_SETENV \
				-DMODPLUG_TRACKER 

#Needed if building of shared library
#LOCAL_LDLIBS := -llog

LOCAL_MODULE    := modplug

#
# these are all the source files that come in the libmodplug
# archive from sourceforge.net
# EXCEPT jni_stubs.cpp which has the JNI interface code 
# (basically just small stub functions that go on to call
# the actual libmodplug methods)
#
LOCAL_SRC_FILES := fastmix.cpp \
		load_669.cpp \
		load_abc.cpp \
		load_amf.cpp \
		load_ams.cpp \
		load_dbm.cpp \
		load_dmf.cpp \
		load_dsm.cpp \
		load_far.cpp \
		load_it.cpp \
		load_j2b.cpp \
		load_mdl.cpp \
		load_med.cpp \
		load_mid.cpp \
		load_mod.cpp \
		load_mt2.cpp \
		load_mtm.cpp \
		load_okt.cpp \
		load_pat.cpp \
		load_psm.cpp \
		load_ptm.cpp \
		load_s3m.cpp \
		load_stm.cpp \
		load_ult.cpp \
		load_umx.cpp \
		load_wav.cpp \
		load_xm.cpp \
		mmcmp.cpp \
		modplug.cpp \
		snd_dsp.cpp \
		snd_flt.cpp \
		snd_fx.cpp \
		sndfile.cpp \
		sndmix.cpp


#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)