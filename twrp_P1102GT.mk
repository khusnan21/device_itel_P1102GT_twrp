#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/itel/P1102GT
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-P1102GT device
$(call inherit-product, device/itel/P1102GT/device.mk)




PRODUCT_DEVICE := P1102GT
PRODUCT_NAME := twrp_P1102GT
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel P1102GT
PRODUCT_MANUFACTURER := itel
PRODUCT_RELEASE_NAME := Itel Itel P1102GT





PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=itel-P1102GT \
    ro.product.name=P1102GT-OP \
    ro.product.brand=Itel \
    ro.product.model=itel P1102GT \
    ro.product.manufacturer=ITEL \
    ro.build.fingerprint=Itel/P1102GT-OP/itel-P1102GT:15/AP3A.240905.015.A2/1744711704:user/release-keys
