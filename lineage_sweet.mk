#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_SCREEN_WIDTH := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true

# AxionAOSP Flags
AXION_CAMERA_REAR_INFO := 108,8,5,2
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := ＭＡＮＩＰＵＬＡＴＯＲ
AXION_PROCESSOR := Snapdragon_732G
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTED_REFRESH_RATES := 60,120
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_INCLUDE_GOOGLE_TELECOMM := false
TARGET_DISABLES_LIBPERF ?= true
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
