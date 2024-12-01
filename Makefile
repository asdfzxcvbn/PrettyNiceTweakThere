TARGET := iphone:clang:16.5:10.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PrettyNiceTweakThere

$(TWEAK_NAME)_FILES = $(wildcard src/*.m)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -Os

include $(THEOS_MAKE_PATH)/tweak.mk
