#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common AfterlifeOS stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# AfterLife flags
AFTERLIFE_MAINTAINER := Skyy丨アラタ

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Offline Charging
USE_PIXEL_CHARGING := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# AfterEcho
TARGET_USE_ECHO := true

# Device Manufacturer
PRODUCT_NAME := afterlife_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/surya_global/surya:12/RKQ1.211019.001/V14.0.2.0.SJGMIXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="surya_global-user 12 RKQ1.211019.001 V14.0.2.0.SJGMIXM release-keys"
