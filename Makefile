TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := TamperAlert
TamperAlert_FILES := Tweak.x
TamperAlert_FRAMEWORKS := UIKit
TamperAlert_CFLAGS := -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
