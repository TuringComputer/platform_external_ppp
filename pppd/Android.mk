ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	main.c \
	magic.c \
	fsm.c \
	lcp.c \
	ipcp.c \
	upap.c \
	chap-new.c \
	ccp.c \
	ecp.c \
	auth.c \
	options.c \
	sys-linux.c \
	chap_ms.c \
	demand.c \
	utils.c \
	tty.c \
	eap.c \
	chap-md5.c \
	pppcrypt.c \
	openssl-hash.c \
	pppox.c

LOCAL_SHARED_LIBRARIES := \
	libcutils libcrypto

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_CFLAGS := -DANDROID_CHANGES -DCHAPMS=1 -DMPPE=1 -Iexternal/openssl/include

ifeq ($(strip $(RIL_COM_INTERFACE)),spi)
LOCAL_CFLAGS += -DRIL_USE_MUX_INTERFACE
endif

ifeq ($(strip $(RIL_COM_INTERFACE)),uart)
LOCAL_CFLAGS += -DRIL_USE_MUX_INTERFACE
endif

LOCAL_MODULE:= pppd

include $(BUILD_EXECUTABLE)

endif
