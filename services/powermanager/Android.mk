LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	IPowerManager.cpp

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libbinder

LOCAL_MODULE:= libpowermanager

LOCAL_MODULE_TAGS := optional

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic \
					external/stlport/stlport
LOCAL_SHARED_LIBRARIES += libstlport \
						  libdl
endif


include $(BUILD_SHARED_LIBRARY)
