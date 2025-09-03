#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

#PRODUCT_PACKAGES_DEBUG += \
#bootctrl


LOCAL_PATH := device/itel/P1102GT
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    libhealthd.$(PRODUCT_PLATFORM)
#TW_LOAD_VENDOR_MODULES := "focaltech_touch_i2c_v42.ko mediatek_drm.ko mtk_panel_ext.ko mtk_disp_drv.ko musb_hdrc.ko charger_class.ko mali_kbase_mt6789.ko tkcore.ko modules.load modules.load.recovery"
TW_LOAD_VENDOR_MODULES := $(shell echo \"$(shell ls $(DEVICE_PATH)/recovery/root/lib/modules)\")
 
# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
vendor.sprd.hardware.boot@1.2-impl \
vendor.sprd.hardware.boot@1.2-impl.recovery

PRODUCT_PACKAGES += \
    bootctrl \
    bootctrl.recovery 


PRODUCT_PACKAGES += \
    bootctrl.mt6789
    
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)


PRODUCT_PACKAGES_DEBUG += \
    update_engine_client
PRODUCT_PACKAGES_DEBUG += \
    bootctrl.mt6789
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload


# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B support
AB_OTA_UPDATER := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_SHIPPING_API_LEVEL := 35

# A/B


PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
