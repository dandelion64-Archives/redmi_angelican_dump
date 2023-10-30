#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from angelican device
$(call inherit-product, device/xiaomi/angelican/device.mk)

PRODUCT_DEVICE := angelican
PRODUCT_NAME := omni_angelican
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2006C3MNG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="angelican-user 10 QP1A.190711.020 V12.0.16.0.QCSMIXM release-keys"

BUILD_FINGERPRINT := Redmi/angelican_global/angelican:10/QP1A.190711.020/V12.0.16.0.QCSMIXM:user/release-keys
