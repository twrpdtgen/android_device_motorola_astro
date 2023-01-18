#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from astro device
$(call inherit-product, device/motorola/astro/device.mk)

PRODUCT_DEVICE := astro
PRODUCT_NAME := omni_astro
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="astro_retail-user 11 RPLS31.Q2-63-10-2-9 c6698 release-keys"

BUILD_FINGERPRINT := motorola/astro_retail/astro:11/RPLS31.Q2-63-10-2-9/c6698:user/release-keys
