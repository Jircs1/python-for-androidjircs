LOCAL_PATH := $(call my-dir)
PYTHON_SRC_PATH := $(LOCAL_PATH)/../../python-src

# for < 5.0
include $(CLEAR_VARS)

ifeq (x$(__ENABLE_PIE),xyes)
# for > 5.0
LOCAL_CFLAGS += -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE
endif

LOCAL_C_INCLUDES := $(PYTHON_SRC_PATH) $(PYTHON_SRC_PATH)/Include
LOCAL_MODULE := python
LOCAL_SRC_FILES := Modules/python.c
LOCAL_PATH := $(PYTHON_SRC_PATH)
LOCAL_SHARED_LIBRARIES := libpython2.7
include $(BUILD_EXECUTABLE)

