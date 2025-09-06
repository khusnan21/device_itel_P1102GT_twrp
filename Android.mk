#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

target_device_parts := $(subst _, ,$(TARGET_DEVICE))

ifeq ($(word 1,$(target_device_parts)),P1102GT)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
